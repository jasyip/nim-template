# Package

version         = "0.1.0"
author          = "Jason Yip"
description     = ""
license         = ""
srcDir          = "src"
bin             = @[""]
binDir          = "bin"


# Dependencies

requires "nim >= 1.6.6"


from std/os import walkDirRec, splitFile
from std/strformat import `&`
from std/strutils import escape

task test, "Runs tests":
  const
    verbosity: uint = 1
    nimFlags: string = &"--verbosity:{verbosity} -r"
    nimbleFlags: string = ""

  for path in walkDirRec("nim-tests"):
    let ext: string = splitFile(path).ext
    if ext == ".nim":
      exec &"nimble {nimbleFlags} c {nimFlags} {escape(path)}"
