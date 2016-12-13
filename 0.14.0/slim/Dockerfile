FROM buildpack-deps:jessie
LABEL authors="Konstantin Molchanov <moigagoo@live.com>,\
               Guilherme Thomazi Bonicontro <thomazi@linux.com>"

RUN wget http://nim-lang.org/download/nim-0.14.0.tar.xz;\
    tar xf nim-0.14.0.tar.xz; rm nim-0.14.0.tar.xz;\
    mv nim-0.14.0 nim;\
    cd nim; sh build.sh;\
    ln -s `pwd`/bin/nim /bin/nim