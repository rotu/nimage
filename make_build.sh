#!/bin/sh

docker run --rm -v /Users/moigagoo/Projects/nimage:/usr/src/app -w /usr/src/app nimlang/nim nim c build
