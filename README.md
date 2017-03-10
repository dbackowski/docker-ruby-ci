# docker-ruby-ci

Dockerfile for CI (continuous integration) based on official ruby:2.3 docker image.

## What is included?

* ruby (2.3.3)
* nodejs (4.6.0)
* phantomjs (2.1.1)

Locale:

* LANG=en_US.UTF-8
* LANGUAGE=en_US:en
* LC_ALL=en_US.UTF-8

Timezone: Europe/Warsaw

## Usage 

```
docker run damianbackowski/ruby-ci:2.3.3 [cmd]
```