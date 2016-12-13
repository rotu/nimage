FROM nimlang/nim:0.14.0
LABEL authors="Konstantin Molchanov <moigagoo@live.com>,\
               Guilherme Thomazi Bonicontro <thomazi@linux.com>"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY . /usr/src/app
ONBUILD RUN nimble build