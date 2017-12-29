# docker-ruby-ci

Dockerfile for CI (continuous integration) based on official ruby:2.4 docker image.

## What is included?

* xvfb
* ruby (2.4.3)
* nodejs (8.9.3)
* phantomjs (2.1.1)
* google chrome (63.0.3239.108)

Locale:

* LANG=en_US.UTF-8
* LANGUAGE=en_US:en
* LC_ALL=en_US.UTF-8

Timezone: Europe/Warsaw

## Usage 

```
docker run damianbackowski/ruby-ci:2.4.2 [cmd]
```
