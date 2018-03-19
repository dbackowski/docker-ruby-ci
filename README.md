# docker-ruby-ci

Dockerfile for CI (continuous integration) based on official ruby docker image.

## What is included?

* xvfb
* ruby (2.5.0)
* nodejs (8.10.0)
* phantomjs (2.1.1)
* google chrome (65.0.3325.162)

Locale:

* LANG=en_US.UTF-8
* LANGUAGE=en_US:en
* LC_ALL=en_US.UTF-8

Timezone: Europe/Warsaw

## Usage 

```
docker run damianbackowski/ruby-ci:2.5.0 [cmd]
```
