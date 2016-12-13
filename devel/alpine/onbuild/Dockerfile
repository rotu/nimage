FROM nimlang/nim:0.15.2-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY . /usr/src/app
ONBUILD RUN nimble build
