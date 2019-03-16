FROM ruby:2.6.1
MAINTAINER Damian Baćkowski <damianbackowski@gmail.com>

ENV CHROME_PACKAGE="google-chrome-stable_73.0.3683.75-1_amd64.deb"
ENV NODE_VERSION 10.15.3
ENV DBUS_SESSION_BUS_ADDRESS=/dev/null
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update && apt-get install locales xvfb -yqq && \
    echo "en_US UTF-8" > /etc/locale.gen && \
    echo 'gem: -no-ri-no-rdoc' > .gemrc && \
    locale-gen en_US.UTF-8 && \
    rm /etc/localtime && ln -s /usr/share/zoneinfo/Europe/Warsaw /etc/localtime && \
    gem install bundler && \
    wget https://github.com/webnicer/chrome-downloads/raw/master/x64.deb/${CHROME_PACKAGE} && \
    dpkg --unpack ${CHROME_PACKAGE} && \
    apt-get install -f -y && \
    apt-get clean && \
    rm ${CHROME_PACKAGE} && \
    curl -sSLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" && \
    tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1 && \
    rm -f "node-v$NODE_VERSION-linux-x64.tar.xz" && \
    npm install npm -g
