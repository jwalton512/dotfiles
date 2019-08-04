#!/bin/sh
#
# Path Helper

# Determine if a path exists in $PATH
function pathExists() {
    if echo $PATH | egrep -q "(^|:)$1($|:)"
    then
        return 0
    fi
    return 1
}

function pathAppend() {
    if ! pathExists $1
    then
        PATH=$PATH:$1
        return 0
    fi
    return 1
}

function pathPrepend() {
    if ! pathExists $1
    then
        PATH=$1:$PATH
        return 0
    fi
    return 1
}
