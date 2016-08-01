FROM nimlang/nim:0.14.3-slim
MAINTAINER Konstantin Molchanov <moigagoo@live.com>

RUN git clone https://github.com/nim-lang/nimble.git
RUN cd nimble; nim -d:release c -r src/nimble -y install
RUN ln -s `pwd`/nimble/nimble /bin/nimble