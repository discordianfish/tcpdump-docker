FROM ubuntu
MAINTAINER Johannes 'fish' Ziemke <docker@freigeist.org>

VOLUME  [ "/dumps" ]
RUN apt-get update &&  apt-get -y -q install tcpdump

ENTRYPOINT [ "/usr/sbin/tcpdump", "-C", "1000", "-W", "100", \
             "-v", "-w", "/dumps/dump" ]
