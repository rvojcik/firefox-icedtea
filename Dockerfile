FROM ubuntu:14.04
MAINTAINER Robert Vojcik <robert@vojcik.net>

# Packages install
RUN apt-get update && apt-get install -y \
    icedtea-plugin \
    icedtea-7-plugin \
    firefox \
    && rm -rf /var/lig/apt/lists/* 

# Create User
RUN useradd -u 1000 -ms /bin/bash firefox

USER firefox

# Workdir and entrypoint
WORKDIR /home/firefox

ENV DISPLAY=":0"

ENTRYPOINT /usr/bin/firefox

