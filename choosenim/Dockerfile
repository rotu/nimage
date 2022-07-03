FROM ubuntu:devel

RUN apt-get update && apt-get install -y curl xz-utils g++ git make
ENV OPENSSLDIR=/usr/local/ssl/

RUN mkdir -p $OPENSSLDIR/src
WORKDIR $OPENSSLDIR/src
RUN git clone https://github.com/openssl/openssl.git --depth 1 -b OpenSSL_1_1_1-stable .
RUN ./config --prefix=$OPENSSLDIR --openssdir=$OPENSSLDIR && make && make install
RUN ls $OPENSSLLDIR/*
RUN echo "$OPENSSLDIR/lib" > /etc/ld.so.conf.d/openssl.conf

WORKDIR /root/
RUN curl https://nim-lang.org/choosenim/init.sh -sSf | bash -s -y -d:nimDebugDlOpen
ENV PATH=/root/.nimble/bin:$PATH
