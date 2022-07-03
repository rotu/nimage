FROM ubuntu:devel

RUN apt-get update && apt-get install -y curl xz-utils g++ git make

RUN git clone https://github.com/openssl/openssl.git -b OpenSSL_1_1_1-stable
WORKDIR ./openssl
RUN ./config --prefix=/usr && make && make install
WORKDIR ~

RUN curl https://nim-lang.org/choosenim/init.sh -sSf | bash -s -- -y
ENV PATH=/root/.nimble/bin:$PATH
