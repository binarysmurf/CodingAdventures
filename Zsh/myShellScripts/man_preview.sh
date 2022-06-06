#!/usr/local/bin/zsh
cmd=$@
man -t $cmd > "/tmp/$1.ps"
man -t $@ | open -f -a Preview.app
