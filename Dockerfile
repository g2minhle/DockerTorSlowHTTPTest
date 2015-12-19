FROM ubuntu:14.04
MAINTAINER g2minhle <lehoangminh@live.com>
RUN apt-get update 
RUN apt-get -y install tor
RUN apt-get -y install git
RUN apt-get -y install g++
RUN apt-get -y install tor
RUN apt-get -y install libssl-dev
RUN apt-get -y install make
RUN git clone https://github.com/g2minhle/slowhttptest
RUN /bin/bash -c " cd ./slowhttptest; ./configure; make"
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

