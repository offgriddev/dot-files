#!/bin/bash -
#===============================================================================
#
#          FILE: go_getter.sh
#
#         USAGE: ./go_getter.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/01/2019 07:51:08
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
go get -u github.com/davidrjenni/reftools/cmd/fillstruct
go get -u github.com/mdempsky/gocode
go get -u github.com/rogpeppe/godef
go get -u github.com/zmb3/gogetdoc
go get -u golang.org/x/tools/cmd/goimports
go get -u github.com/golang/lint/golint
go get -u github.com/alecthomas/gometalinter
go get -u github.com/fatih/gomodifytags
go get -u golang.org/x/tools/cmd/gorename
go get -u golang.org/x/tools/cmd/guru
go get -u github.com/josharian/impl
go get -u honnef.co/go/tools/cmd/keyify
go get -u github.com/fatih/motion
go get -u github.com/koron/iferr
