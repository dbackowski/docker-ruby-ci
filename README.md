# docker-ruby-ci

Dockerfile for CI (continuous integration) based on official ruby:2.4 docker image.

## What is included?

* ruby (2.4.1)
* nodejs (6.10.3)
* phantomjs (2.1.1)

Locale:

* LANG=en_US.UTF-8
* LANGUAGE=en_US:en
* LC_ALL=en_US.UTF-8

Timezone: Europe/Warsaw

## Usage 

```
docker run damianbackowski/ruby-ci:2.4.1 [cmd]
```