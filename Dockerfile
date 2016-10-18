FROM ruby:2.3
MAINTAINER Damian Baćkowski <damianbackowski@gmail.com>

ENV PHANTOMJS_VERSION 2.1.1
ENV NODE_VERSION 4.6.0

RUN apt-get update && apt-get install locales -yqq
RUN echo "en_US UTF-8" > /etc/locale.gen
RUN locale-gen en_US.UTF-8
RUN gem install bundler --no-rdoc --no-ri

RUN mkdir -p /srv/var && \
    curl -sSLO "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2" && \
    tar -xjf "phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2" -C "/tmp" && \
    rm -f "phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2" && \
    mv "/tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/" /srv/var/phantomjs && \
    ln -s /srv/var/phantomjs/bin/phantomjs /usr/bin/phantomjs

RUN curl -sSLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" && \
    tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1 && \
    rm -f "node-v$NODE_VERSION-linux-x64.tar.xz" && \
    npm install npm -g
