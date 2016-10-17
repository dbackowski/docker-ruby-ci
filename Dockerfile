FROM alpine:3.4
MAINTAINER Damian Baćkowski "damianbackowski@gmail.com"

RUN apk update
RUN apk upgrade
RUN apk add curl wget bash
RUN apk add ruby ruby-bundler
RUN apk add nodejs
RUN apk add --no-cache fontconfig

RUN rm -rf /var/cache/apk/*

RUN mkdir -p /usr/share && \
    cd /usr/share \
    && curl -L https://github.com/Overbryd/docker-phantomjs-alpine/releases/download/2.11/phantomjs-alpine-x86_64.tar.bz2 | tar xj \
    && ln -s /usr/share/phantomjs/phantomjs /usr/bin/phantomjs

RUN ruby --version && node --version && phantomjs --version
