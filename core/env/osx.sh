#!/bin/sh

if [ "Darwin" == "$(uname)" ]; then
    exit 0
else
    exit 1
fi

