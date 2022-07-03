FROM ubuntu:devel

RUN apt-get update && apt-get install -y curl xz-utils g++ git make

RUN mkdir -p /usr/local/ssl/src
WORKDIR /usr/local/ssl/src
RUN git clone https://github.com/openssl/openssl.git --depth 1 -b OpenSSL_1_1_1-stable /usr/local/ssl/.
RUN ./config --prefix=.. --openssldir=.. && make && make install

WORKDIR /root/
RUN echo "/usr/local/ssl/lib64" > /etc/ld.so.conf.d/openssl.conf
RUN curl https://nim-lang.org/choosenim/init.sh -sSf | bash -s -y -d:nimDebugDlOpen
ENV PATH=/root/.nimble/bin:$PATH
