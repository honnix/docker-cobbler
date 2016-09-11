# Docker-Cobbler

Get the original README from [here](https://github.com/ContainerSolutions/docker-cobbler).

This fork is tailored towards my Synology NAS.

`sudo ./build.sh` to build and `sudo ./start.sh` to start.

Hack the scripts to configure your own port mapping. TFTP server runs in my NAS instead of
the container because I couldn't figure out how to make port mapping work except using
`--net=host`.
