#!/bin/sh

if [ "Linux" == "$(uname)" ]; then
    exit
else
    exit 1
fi

