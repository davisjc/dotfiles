#!/bin/sh

if command -v pacman > /dev/null; then
    exit 0
else
    exit 1
fi

