#!/bin/sh

if [ "Linux" == "$(uname)" ]; then
    exit 0
else
    exit 1
fi

