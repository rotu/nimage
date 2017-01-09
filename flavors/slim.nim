#? stdtmpl
#proc ubuntu*(version, base: string,
#             labels: openarray[(string, string)] = {:}): string =
#  result = ""
FROM $base
#for label, value in labels.items:
LABEL $label="$value"
#end for
RUN apt-get update; apt-get install -y wget
RUN wget http://nim-lang.org/download/nim-${version}.tar.xz; \
    tar xf nim-${version}.tar.xz; rm nim-${version}.tar.xz; \
    mv nim-${version} nim; \
    cd nim; sh build.sh; \
    ln -s `pwd`/bin/nim /bin/nim
#end proc
#
#proc alpine*(version: string,
#             labels: openarray[(string, string)] = {:}): string =
#  result = ""
FROM alpine
#for label, value in labels.items:
LABEL $label="$value"
#end for
RUN apk add --no-cache g++ curl tar xz
RUN mkdir -p /nim; \
    curl -sL "http://nim-lang.org/download/nim-${version}.tar.xz" \
    |tar xJ --strip-components=1 -C /nim; \
    cd /nim; sh build.sh; \
    ln -s `pwd`/bin/nim /bin/nim
#end proc