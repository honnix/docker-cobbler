FROM centos:7

MAINTAINER hxliang1982@gmail.com

RUN yum -y install epel-release;\
yum -y install cobbler cobbler-web syslinux pykickstart;\
sed -i -e 's/\(^.*disable.*=\) yes/\1 no/' /etc/xinetd.d/tftp;\
touch /etc/xinetd.d/rsync

EXPOSE 69 80 443 25151

CMD httpd -k start && cobblerd -F
