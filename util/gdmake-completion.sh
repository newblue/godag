#!/bin/bash
# Copyright (C) 2011 all rights reserved
# GNU GENERAL PUBLIC LICENSE VERSION 3.0
# Author bjarneh@ifi.uio.no
#
# Bash command completion file for gdmake
#
# Add this file somewhere where it gets sourced.
# If you have sudo power it can be dropped into
# /etc/bash_completion.d/. If not it can be sourced
# by one of your startup scripts (.bashrc .profile ...)

_gdmake(){

    local cur prev opts gdmake_targets
    gdmake_targets=$(${PWD}/gdmake --list)

    COMPREPLY=()

    prev="${COMP_WORDS[COMP_CWORD-1]}"
    cur="${COMP_WORDS[COMP_CWORD]}"

    COMPREPLY=( $(compgen -W "${gdmake_targets}" -- "${cur}") )
}

complete -o default -F _gdmake gdmake
