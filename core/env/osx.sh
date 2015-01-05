#!/bin/sh

if [ "Darwin" == "$(uname)" ]; then
    exit
else
    exit 1
fi

