FROM buildpack-deps:jessie
MAINTAINER Konstantin Molchanov <moigagoo@live.com>

RUN wget http://nim-lang.org/download/nim-0.14.2.tar.xz
RUN tar xf nim-0.14.2.tar.xz; mv nim-0.14.2 nim
RUN cd nim; sh build.sh
RUN ln -s `pwd`/nim/bin/nim /bin/nim