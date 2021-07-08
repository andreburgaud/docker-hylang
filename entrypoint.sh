#!/bin/sh
set -e

if [ "$1" = 'hy' ]; then
    export HYSTARTUP=/hyrc.hy
    shift
    hy $@
else
    $@
fi
