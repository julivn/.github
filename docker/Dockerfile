FROM debian:stretch
LABEL maintainer="Bitmonix Developers <dev@bitmonix.org>"
LABEL description="Dockerised BitmonixCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
