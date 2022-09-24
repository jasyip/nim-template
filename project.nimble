# Package

version         = "0.1.0"
author          = "Jason Yip"
description     = "" # Fill this value to resolve error of mandatory value
license         = "" # Fill this value to resolve error of mandatory value
srcDir          = "src"

# if just a binary package, uncomment and specifiy project name:
#[
bin             = @["project"]
binDir          = "bin"

#[
namedBin        =  {"sourceName" : "binaryName"}.toTable()
]#

# if a hybrid package, uncomment:
#[
installExt      = @["nim"]
]#
]#


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

  for path in walkDirRec("tests", checkDir = true):
    let ext: string = splitFile(path).ext
    if ext == ".nim":
      exec &"nimble {nimbleFlags} c {nimFlags} {escape(path)}"
