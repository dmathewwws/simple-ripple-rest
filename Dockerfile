FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y nodejs nodejs-legacy npm git git-core

RUN git clone https://github.com/ripple/ripple-rest.git

RUN cd /ripple-rest && npm install

ADD config.json /ripple-rest/config.json

WORKDIR /ripple-rest