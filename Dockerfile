FROM stackbrew/ubuntu:saucy
VERSION 0.1
MAINTAINER Patrick Aljord <patcito@gmail.com>
RUN echo "Have fun!"
## get 10gen server key
RUN apt-get install -y --force-yes software-properties-common
RUN add-apt-repository ppa:chris-lea/redis-server
RUN apt-get update
RUN apt-get install -y --force-yes redis-server
## config redis 
## add 10gen apt repo to source list and install
EXPOSE      6379
ENTRYPOINT  ["/usr/bin/redis-server","/etc/redis/redis.conf"]
## Instructions
RUN echo "start it like that: docker run -i -t -name mongodb -v /path/to/mongodb/data/:/data -v /path/to/mongodb/log:/log e4fd60b98bcb"
