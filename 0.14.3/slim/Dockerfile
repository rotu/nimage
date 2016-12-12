FROM buildpack-deps:jessie
MAINTAINER Konstantin Molchanov <moigagoo@live.com>

RUN wget http://nim-lang.org/download/nim-0.14.3.tar.xz;\
    tar xf nim-0.14.3.tar.xz; rm nim-0.14.3.tar.xz;\
    mv nim-0.14.3 nim;\
    cd nim; sh build.sh;\
    ln -s `pwd`/bin/nim /bin/nim