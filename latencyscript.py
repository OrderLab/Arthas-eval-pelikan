import memcache
#import datetime
import time
memc =  memcache.Client(['127.0.0.1:12321'], socket_timeout=100)

str1 = ""
str2 = ""

a = 1

while a < 20:
	str1 = "key" + str(a)
	str2 = "value" + str(a)
        start = time.time()
	memc.set(str1, str2)
	end = time.time()
	print(end - start)
        start = time.time()
        memc.get(str1)
	end = time.time()
        print("read")
	print(end - start)
	a += 1



