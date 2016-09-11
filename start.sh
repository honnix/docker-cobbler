#!/bin/sh

docker run \
-d \
-v `pwd`/etc/cobbler/settings:/etc/cobbler/settings \
-v `pwd`/mnt:/mnt:ro \
-v `pwd`/var/www/cobbler/images:/var/www/cobbler/images \
-v `pwd`/var/www/cobbler/ks_mirror:/var/www/cobbler/ks_mirror \
-v `pwd`/var/www/cobbler/links:/var/www/cobbler/links \
-v `pwd`/var/lib/cobbler/config:/var/lib/cobbler/config \
-v `pwd`/var/lib/tftpboot:/var/lib/tftpboot \
-p 3069:69 \
-p 3080:80 \
-p 3443:443 \
-p 25151:25151 \
--name local_cobbler local/cobbler
