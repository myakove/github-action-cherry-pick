# syntax = docker/dockerfile:1.1-experimental
FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install git python3-pip
#RUN apk --update --no-cache add git bash py3-pip openssh
#
#RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing hub
#
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
