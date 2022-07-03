FROM ubuntu:devel
RUN apt-get update && apt-get install -y curl xz-utils g++ git
RUN git clone https://github.com/openssl/openssl.git -b OpenSSL_1_1_1-stable \
 && pushd openssl
 && ./configure
 && make
 && make install
 && popd

RUN curl https://nim-lang.org/choosenim/init.sh -sSf | bash -s -- -y
ENV PATH=/root/.nimble/bin:$PATH
