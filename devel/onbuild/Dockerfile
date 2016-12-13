FROM nimlang/nim:devel

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY . /usr/src/app
ONBUILD RUN nimble build
