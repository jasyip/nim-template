# Package

version         = "" # Fill this value to resolve error of mandatory value
author          = "" # Fill this value to resolve error of mandatory value
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

requires "nim >= " # Fill this value to resolve error of mandatory value
