# docker-ruby-ci

Dockerfile for CI (continuous integration) based on official ruby docker image.

## What is included?

* xvfb
* ruby (2.6.3)
* nodejs (10.15.3)
* google chrome (74.0.3729.169)

Locale:

* LANG=en_US.UTF-8
* LANGUAGE=en_US:en
* LC_ALL=en_US.UTF-8

Timezone: Europe/Warsaw

## Usage

```
docker run damianbackowski/ruby-ci:2.6.1 [cmd]
```
