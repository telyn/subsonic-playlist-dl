FROM debian:buster-slim

RUN apt update \
 && apt install --no-install-recommends -y libxml-xpath-perl \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*
COPY export-playlists /usr/bin/export-playlists

VOLUME /playlists
WORKDIR /playlists
