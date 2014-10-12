#include <slimcache/bb_process.h>

#include <cuckoo/bb_cuckoo.h>

#include <cc_array.h>
#include <cc_log.h>
#include <cc_print.h>

static rstatus_t
process_get_key(struct mbuf *buf, struct bstring *key)
{
    rstatus_t status = CC_OK;
    struct item *it;
    struct val val;
    uint8_t val_str[CC_UINT64_MAXLEN];
    size_t size;

    log_verb("get key at %p, rsp buf at %p", key, buf);

    it = cuckoo_lookup(key);
    if (NULL != it) {
        //stats_thread_incr_get_key_hit);

        log_verb("found key at item %p");

        item_val(&val, it);
        if (val.type == VAL_TYPE_INT) { /* print and overwrite val */
            size = cc_scnprintf(val_str, CC_UINT64_MAXLEN, "%"PRIu64, val.vint);
            val.vstr.data = val_str;
            val.vstr.len = (uint32_t)size;
        }

        compose_rsp_keyval(buf, key, &val.vstr, item_flag(it), 0);
    } else {
        //stats_thread_incr_get_key_miss);
    }

    return status;
}

static rstatus_t
process_get(struct request *req, struct mbuf *buf)
{
    rstatus_t status;
    struct bstring *key;
    uint32_t i;

    log_verb("processing get req %p, rsp buf at %p", req, buf);

    //stats_thread_incr(get);

    for (i = 0; i < req->keys->nelem; ++i) {

        key = array_get_idx(req->keys, i);
        status = process_get_key(buf, key);

    }
    status = compose_rsp_msg(buf, RSP_END, false);

    return status;
}

static rstatus_t
process_gets_key(struct mbuf *buf, struct bstring *key)
{
    rstatus_t status = CC_OK;
    struct item *it;
    struct val val;
    uint8_t val_str[CC_UINT64_MAXLEN];
    size_t size;

    log_verb("gets key at %p, rsp buf at %p", key, buf);

    it = cuckoo_lookup(key);
    if (NULL != it) {
        //stats_thread_incr(gets_key_hit);

        item_val(&val, it);
        if (val.type == VAL_TYPE_INT) { /* print and overwrite val */
            size = cc_scnprintf(val_str, CC_UINT64_MAXLEN, "%"PRIu64, val.vint);
            val.vstr.data = val_str;
            val.vstr.len = (uint32_t)size;
        }

        compose_rsp_keyval(buf, key, &val.vstr, item_flag(it), item_cas(it));
    } else {
        //stats_thread_incr(gets_key_miss);
    }

    return status;
}

static rstatus_t
process_gets(struct request *req, struct mbuf *buf)
{
    rstatus_t status;
    struct bstring *key;
    uint32_t i;

    log_verb("processing gets req %p, rsp buf at %p", req, buf);

    //stats_thread_incr(gets);

    for (i = 0; i < req->keys->nelem; ++i) {
        //stats_thread_incr(gets_key);

        key = array_get_idx(req->keys, i);
        status = process_gets_key(buf, key);

    }
    status = compose_rsp_msg(buf, RSP_END, false);

    return status;
}

static rstatus_t
process_delete(struct request *req, struct mbuf *buf)
{
    rstatus_t status = CC_OK;
    struct item *it;

    log_verb("processing delete req %p, rsp buf at %p", req, buf);

    //stats_thread_incr(delete);

    it = cuckoo_lookup(array_get_idx(req->keys, 0));
    if (NULL != it) {
        //stats_thread_incr(delete_hit);

        item_delete(it);

        status = compose_rsp_msg(buf, RSP_DELETED, req->noreply);
    } else {
        //stats_thread_incr(delete_miss);

        status = compose_rsp_msg(buf, RSP_NOT_FOUND, req->noreply);
    }

    return status;
}

static void
process_value(struct val *val, struct bstring *val_str)
{
    rstatus_t status;

    log_verb("processing value at %p, store at %p", val_str, val);

    status = bstring_atou64(&val->vint, val_str);
    if (status == CC_OK) {
        val->type = VAL_TYPE_INT;
    } else {
        val->type = VAL_TYPE_STR;
        val->vstr = *val_str;
    }
}

static rstatus_t
process_set(struct request *req, struct mbuf *buf)
{
    rstatus_t status = CC_OK;
    rel_time_t expire;
    struct bstring *key;
    struct item *it;
    struct val val;

    log_verb("processing set req %p, rsp buf at %p", req, buf);

    //stats_thread_incr(set);

    key = array_get_idx(req->keys, 0);
    expire = time_reltime(req->expiry);
    process_value(&val, &req->vstr);

    it = cuckoo_lookup(key);
    if (it != NULL) {
        item_update(it, &val, expire);
    } else {
        cuckoo_insert(key, &val, expire);
    }

    //stats_thread_incr(set_success);
    status = compose_rsp_msg(buf, RSP_STORED, req->noreply);

    return status;
}

static rstatus_t
process_add(struct request *req, struct mbuf *buf)
{
    rstatus_t status = CC_OK;
    rel_time_t expire;
    struct bstring *key;
    struct item *it;
    struct val val;

    log_verb("processing add req %p, rsp buf at %p", req, buf);

    //stats_thread_incr(add);

    key = array_get_idx(req->keys, 0);

    it = cuckoo_lookup(key);
    if (it != NULL) {
        //stats_thread_incr(add_exist);
        status = compose_rsp_msg(buf, RSP_NOT_STORED, req->noreply);
    } else {
        expire = time_reltime(req->expiry);
        process_value(&val, &req->vstr);
        cuckoo_insert(key, &val, expire);
        //stats_thread_incr(add_success);
        status = compose_rsp_msg(buf, RSP_STORED, req->noreply);
    }

    return status;
}

static rstatus_t
process_replace(struct request *req, struct mbuf *buf)
{
    rstatus_t status = CC_OK;
    rel_time_t expire;
    struct bstring *key;
    struct item *it;
    struct val val;

    log_verb("processing replace req %p, rsp buf at %p", req, buf);

    //stats_thread_incr(replace);

    key = array_get_idx(req->keys, 0);

    it = cuckoo_lookup(key);
    if (it != NULL) {
        expire = time_reltime(req->expiry);
        process_value(&val, &req->vstr);
        item_update(it, &val, expire);
        //stats_thread_incr(replace_success);
        status = compose_rsp_msg(buf, RSP_STORED, req->noreply);
    } else {
        //stats_thread_incr(replace_miss);
        status = compose_rsp_msg(buf, RSP_NOT_STORED, req->noreply);
    }

    return status;
}

static rstatus_t
process_cas(struct request *req, struct mbuf *buf)
{
    rstatus_t status = CC_OK;
    rel_time_t expire;
    struct bstring *key;
    struct item *it;
    struct val val;

    log_verb("processing cas req %p, rsp buf at %p", req, buf);

    //stats_thread_incr(cas);

    key = array_get_idx(req->keys, 0);

    it = cuckoo_lookup(key);
    if (it != NULL) {
        if (item_cas_valid(it, req->cas)) {
            expire = time_reltime(req->expiry);
            process_value(&val, &req->vstr);
            item_update(it, &val, expire);
            //stats_thread_incr(cas_success);
            status = compose_rsp_msg(buf, RSP_STORED, req->noreply);
        } else {
            //stats_thread_incr(cas_badval);
            status = compose_rsp_msg(buf, RSP_EXISTS, req->noreply);
        }
    } else {
        //stats_thread_incr(cas_miss);
        status = compose_rsp_msg(buf, RSP_NOT_FOUND, req->noreply);
    }

    return status;
}

static rstatus_t
process_incr(struct request *req, struct mbuf *buf)
{
    rstatus_t status = CC_OK;
    struct bstring *key;
    struct item *it;
    struct val new_val;

    log_verb("processing incr req %p, rsp buf at %p", req, buf);

    key = array_get_idx(req->keys, 0);

    it = cuckoo_lookup(key);
    if (NULL != it) {
        if (item_vtype(it) != VAL_TYPE_INT) {
            //stats_thread_incr(cmd_error);
            log_warn("value type not int, cannot apply incr on "
                    "key %s", ITEM_KEY_POS(it));  /* FIXME(yao): binary key */
            return compose_rsp_msg(buf, RSP_CLIENT_ERROR, req->noreply);
        }

        new_val.type = VAL_TYPE_INT;
        new_val.vint = item_value_int(it) + req->delta;
        item_value_update(it, &new_val);
        //stats_thread_incr(incr_success);
        status = compose_rsp_uint64(buf, new_val.vint, req->noreply);
    } else {
        //stats_thread_incr(incr_miss);
        status = compose_rsp_msg(buf, RSP_NOT_FOUND, req->noreply);
    }

    return status;
}

static rstatus_t
process_decr(struct request *req, struct mbuf *buf)
{
    rstatus_t status = CC_OK;
    struct bstring *key;
    struct item *it;
    struct val new_val;

    log_verb("processing decr req %p, rsp buf at %p", req, buf);

    key = array_get_idx(req->keys, 0);

    it = cuckoo_lookup(key);
    if (NULL != it) {
        if (item_vtype(it) != VAL_TYPE_INT) {
            //stats_thread_incr(cmd_error);
            log_warn("value type not int, cannot apply decr on "
                    "key %s", ITEM_KEY_POS(it));  /* FIXME(yao): binary key */
            return compose_rsp_msg(buf, RSP_CLIENT_ERROR, req->noreply);
        }

        new_val.type = VAL_TYPE_INT;
        new_val.vint = item_value_int(it) - req->delta;
        item_value_update(it, &new_val);
        //stats_thread_incr(decr_success);
        status = compose_rsp_uint64(buf, new_val.vint, req->noreply);
    } else {
        //stats_thread_incr(decr_miss);
        status = compose_rsp_msg(buf, RSP_NOT_FOUND, req->noreply);
    }

    return status;
}

rstatus_t
process_request(struct request *req, struct mbuf *buf)
{
    rstatus_t status;

    log_verb("processing req %p, rsp buf at %p", req, buf);

    switch (req->verb) {
    case GET:
        status = process_get(req, buf);

        return status;

    case GETS:
        status = process_gets(req, buf);

        return status;

    case DELETE:
        status = process_delete(req, buf);

        return status;

    case SET:
        status = process_set(req, buf);

        return status;

    case ADD:
        status = process_add(req, buf);

        return status;

    case REPLACE:
        status = process_replace(req, buf);

        return status;

    case CAS:
        status = process_cas(req, buf);

        return status;

    case INCR:
        status = process_incr(req, buf);

        return status;

    case DECR:
        status = process_decr(req, buf);

        return status;

    default:
        NOT_REACHED();
        break;
    }

    return CC_OK;
}