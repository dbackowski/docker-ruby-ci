# docker-ruby-ci

Dockerfile for CI (continuous integration) based on official ruby docker image.

## What is included?

* xvfb
* ruby (2.7.0)
* nodejs (12.14.0)
* google chrome (79.0.3945.88)

Locale:

* LANG=en_US.UTF-8
* LANGUAGE=en_US:en
* LC_ALL=en_US.UTF-8

Timezone: Europe/Warsaw

## Usage

```
docker run damianbackowski/ruby-ci:2.7.0 [cmd]
```
