#include "response.h"

#include <cc_debug.h>
#include <cc_mm.h>

struct response *
admin_response_create(void)
{
    //printf("admin response create\n");
    struct response *rsp = cc_alloc(sizeof(struct response));

    if (rsp == NULL) {
        return NULL;
    }
    rsp = NULL;

    admin_response_reset(rsp);
    return rsp;
}

void
admin_response_destroy(struct response **rsp)
{
    ASSERT(*rsp != NULL);

    cc_free(*rsp);
    *rsp = NULL;
}

void
admin_response_reset(struct response *rsp)
{
    ASSERT(rsp != NULL);

    rsp->type = RSP_GENERIC;
    bstring_init(&rsp->data);
}
