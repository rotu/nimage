#? stdtmpl
#proc any*(version, base: string,
#          labels: openarray[(string, string)] = {:}): string =
#  result = ""
FROM nimlang/nim:$version-$base-regular
#  for label, value in labels.items:
LABEL $label="$value"
#  end for
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY . /usr/src/app
#  if version >= "0.17.0":
ONBUILD RUN nimble install -y
#  else:
ONBUILD RUN nimble build -y
#  end if
#end proc
