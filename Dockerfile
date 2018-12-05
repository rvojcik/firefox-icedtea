FROM ubuntu:14.04
MAINTAINER Robert Vojcik <robert@vojcik.net>

# Packages install
RUN apt-get update && apt-get install -y \
    wget \
    icedtea-plugin \
    libatk1.0-0 \
    libc6 \
    libcairo-gobject2 \
    libcairo2 \
    libdbus-1-3 \
    libdbus-glib-1-2 \
    libfontconfig1 \
    libfreetype6 \
    libpango-1.0-0 \
    libpangocairo-1.0-0 \
    libstartup-notification0 \
    libstdc++6 \
    libx11-6 \
    libx11-xcb1 \
    libxcb-shm0 \
    libxcb1 \
    libxcomposite1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxrender1 \
    libxt6 \
    libgtk-3-0 \
    libglib2.0-0 \
    icedtea-7-plugin \
    && rm -rf /var/lig/apt/lists/* 

# Install firefox
RUN cd /opt && \
    wget -O - http://ftp.mozilla.org/pub/firefox/releases/51.0/linux-x86_64/en-US/firefox-51.0.tar.bz2 | \
        tar -jxf - && ln -s /opt/firefox/firefox* /usr/bin/

# Create User
RUN useradd -u 1000 -ms /bin/bash firefox

USER firefox

# Workdir and entrypoint
WORKDIR /home/firefox

ENV DISPLAY=":0"

ENTRYPOINT /opt/firefox/firefox

