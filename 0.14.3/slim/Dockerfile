FROM buildpack-deps:jessie
MAINTAINER Konstantin Molchanov <moigagoo@live.com>

RUN git clone git://github.com/nim-lang/Nim.git nim
RUN cd nim; git clone --depth 1 git://github.com/nim-lang/csources
RUN cd nim/csources; sh build.sh
RUN cd nim; bin/nim c koch
RUN cd nim; ./koch boot -d:release
RUN ln -s `pwd`/nim/bin/nim /bin/nim