# Docker-Cobbler

Get the original README from [here](https://github.com/ContainerSolutions/docker-cobbler).

This fork is tailored towards my Synology NAS.

`sudo ./build.sh` to build and `sudo ./start.sh` to start.

Hack `start.sh` to configure your own port and volume mapping.

TFTP server runs in my NAS instead of
the container because I couldn't figure out how to make port mapping work except using
`--net=host`. The reason is there is no passive mode of TFTP so NAT simply doesn't work!
