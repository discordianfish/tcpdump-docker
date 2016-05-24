# tcpdump docker container

This simple image runs a tcpdump and writes dumps to the volume /data.
It will keep at max 10x 1GB files and overwrite the oldest one.

To capture on the hosts network interfaces, you need to run the
container by using the host networking mode:

    $ docker run --net=host fish/tcpdump-docker

To specify filters or interface, you can use this image as you would
use tcpdump:

    $ docker run --net=host fish/tcpdump-docker -i eth2 port 80
    
Repository: https://registry.hub.docker.com/u/fish/tcpdump-docker/

