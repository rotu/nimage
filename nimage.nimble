# Package

version       = "0.1.0"
author        = "Konstantin Molchanov"
description   = "Nimage: Nim Docker image generator and uploader."
license       = "MIT"
srcDir        = "src"
bin           = @["nimage"]

# Dependencies

requires "nim >= 0.18.0", "docopt"
