FROM ubuntu:25.04

WORKDIR /opt


RUN apt-get update ; apt-get install -y wget make gcc curl zlib1g-dev libssl-dev openssl git 

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive TZ=Europe/Berlin apt-get -y install tzdata && \
    apt-get install -y iputils-ping net-tools iproute2 vim && \
    apt-get install -y wget make gcc curl zlib1g-dev libssl-dev openssl git python3 python3-pip python3-pefile 


WORKDIR /opt
RUN git clone https://github.com/mrexodia/perfect-dll-proxy.git;  
WORKDIR /opt/perfect-dll-proxy

