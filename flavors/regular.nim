#? stdtmpl
#proc any*(version: string,
#          labels: openarray[(string, string)] = {:}): string =
#  result = ""
FROM nimlang/nim:$version-slim
#for label, value in labels.items:
LABEL $label="$value"
#end for
RUN git clone https://github.com/nim-lang/nimble.git;\
    cd nimble; nim -d:release c -r src/nimble -y install;\
    ln -s `pwd`/nimble /bin/nimble
#end proc