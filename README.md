[![](https://images.microbadger.com/badges/image/honnix/cobbler.svg)](https://microbadger.com/images/honnix/cobbler "Get your own image badge on microbadger.com")

# Docker-Cobbler

Get the original README from [here](https://github.com/ContainerSolutions/docker-cobbler).

This fork is tailored towards my Synology NAS.

`sudo ./build.sh` to build and `sudo ./start.sh` to start.

Access Cobbler web UI at `https://<host>:<port>/cobbler_web

Hack `start.sh` to configure your own port and volume mapping.

TFTP server runs in my NAS instead of
the container because I couldn't figure out how to make port mapping work except using
`--net=host`. The reason is there is no passive mode of TFTP so NAT simply doesn't work!

