FROM nimlang/nim:0.15.2-alpine-slim
LABEL authors="Konstantin Molchanov <moigagoo@live.com>,\
               Guilherme Thomazi Bonicontro <thomazi@linux.com>"

RUN git clone https://github.com/nim-lang/nimble.git;\
    cd nimble; nim -d:release c -r src/nimble -y install;\
    ln -s `pwd`/nimble /bin/nimble
