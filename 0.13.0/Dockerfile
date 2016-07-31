FROM buildpack-deps:jessie
MAINTAINER Konstantin Molchanov <moigagoo@live.com>

# Install Nim
RUN wget http://nim-lang.org/download/nim-0.13.0.tar.xz
RUN tar xf nim-0.13.0.tar.xz; mv nim-0.13.0 nim
RUN cd nim; sh build.sh
RUN ln -s `pwd`/nim/bin/nim /bin/nim

# Install Nimble
RUN git clone https://github.com/nim-lang/nimble.git
RUN cd nimble; nim -d:release c -r src/nimble -y install
RUN ln -s `pwd`/nimble/nimble /bin/nimble