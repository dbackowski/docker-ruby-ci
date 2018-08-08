# docker-ruby-ci

Dockerfile for CI (continuous integration) based on official ruby docker image.

## What is included?

* xvfb
* ruby (2.5.1)
* nodejs (8.11.3)
* google chrome (68.0.3440.84)

Locale:

* LANG=en_US.UTF-8
* LANGUAGE=en_US:en
* LC_ALL=en_US.UTF-8

Timezone: Europe/Warsaw

## Usage

```
docker run damianbackowski/ruby-ci:2.5.1 [cmd]
```
