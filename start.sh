#!/bin/sh

docker run \
-d \
-v `pwd`/etc/cobbler/settings:/etc/cobbler/settings \
-v `pwd`/etc/cobbler/users.digest:/etc/cobbler/users.digest \
-v `pwd`/distro:/distro:ro \
-v `pwd`/var/www/cobbler/images:/var/www/cobbler/images \
-v `pwd`/var/www/cobbler/ks_mirror:/var/www/cobbler/ks_mirror \
-v `pwd`/var/www/cobbler/links:/var/www/cobbler/links \
-v `pwd`/var/lib/cobbler/config:/var/lib/cobbler/config \
-v /volume1/tftpboot:/var/lib/tftpboot \
-p 3080:80 \
-p 3443:443 \
--name honnix_cobbler honnix/cobbler
