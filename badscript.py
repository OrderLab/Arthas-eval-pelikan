import memcache

memc =  memcache.Client(['127.0.0.1:12321'], socket_timeout=100)

memc.set("ke", "va")



