# docker-ruby-ci

Dockerfile for CI (continuous integration) based on official ruby docker image.

## What is included?

* xvfb
* ruby (2.6.5)
* nodejs (12.13.0)
* google chrome (78.0.3904.97)

Locale:

* LANG=en_US.UTF-8
* LANGUAGE=en_US:en
* LC_ALL=en_US.UTF-8

Timezone: Europe/Warsaw

## Usage

```
docker run damianbackowski/ruby-ci:2.6.5 [cmd]
```
