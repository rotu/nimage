const doc = """
Nimage: Nim Docker image generator and uploader.

Usage:
  nimage publish <version> --flavors=<flavor>... --bases=<base>... --default=<default>
  nimage (-h | --help)

Options:
  --flavors=<flavor>... Flavors. Possible values: slim, regular, onbuild.
  --bases=<base>...     Base images. Possible values: ubuntu, alpine.
  --default=<default>   Default image. Possible values: ubuntu, alpine.
  -h --help             Show this screen.
"""


import strutils, strformat
import docopt
import nimagepkg/flavors/[slim, regular, onbuild]


template generate(version, flavor, base: string): untyped = `flavor`.`base`(`version`)


func publish(version: string; flavors, bases: seq[string]; default: string) =
  for flavor in flavors:
    for base in bases:
      echo generate(version, flavor, base)


when isMainModule:
    let args = docopt(doc)

    if args["publish"]:
      let
        version = $args["<version>"]
        flavors = ($args["--flavors"]).split(',')
        bases = ($args["--bases"]).split(',')
        default = $args["--default"]

      publish(version, flavors, bases, default)
