FROM debian:wheezy
MAINTAINER Robert Vojcik <robert@vojcik.net>

RUN apt-get update && apt-get install -y \
    iceweasel \
    icedtea-7-plugin \
    icedtea-netx \
    icedtea-plugin \
    && apt-get clean && rm -rf /var/lig/apt/lists/* 

RUN useradd -u 1000 -ms /bin/bash firefox

USER firefox

WORKDIR /home/firefox

ENV DISPLAY=":0"

ENTRYPOINT /usr/bin/iceweasel

