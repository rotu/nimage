const doc = """
Nimage: Nim Docker image generator and uploader.

Usage:
  nimage publish <version> --bases=<base>... --flavors=<flavor>...
  naval_fate (-h | --help)

Options:
  -h --help             Show this screen.

  --bases=<base>...     Base images. Possible values: ubuntu, alpine.
  --flavors=<flavor>... Flavors. Possible values: slim, regular, onbuild.
"""

import strutils
import docopt

let args = docopt(doc, version = "Naval Fate 2.0")

if args["move"]:
  echo "Moving ship $# to ($#, $#) at $# kn".format(
    args["<name>"], args["<x>"], args["<y>"], args["--speed"])
  ships[$args["<name>"]].move(
    parseFloat($args["<x>"]), parseFloat($args["<y>"]),
    speed = parseFloat($args["--speed"]))

if args["new"]:
  for name in @(args["<name>"]):
    echo "Creating ship $#" % name