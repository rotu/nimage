FROM alpine 
MAINTAINER Guilherme Thomazi Bonicontro <thomazi@linux.com>

RUN apk add --no-cache g++ curl tar xz
RUN mkdir -p /nim;\
    curl -sL "http://nim-lang.org/download/nim-0.13.0.tar.xz" | tar xJ --strip-components=1 -C /nim;\
    cd /nim; sh build.sh;\
    ln -s `pwd`/bin/nim /bin/nim
