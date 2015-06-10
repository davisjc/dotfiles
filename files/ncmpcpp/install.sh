#!/bin/sh

LINK=$DOTFILES/core/link.sh
INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

mkdir -p $HOME/.ncmpcpp
$LINK $INSTALL_DIR/config $HOME/.ncmpcpp/config
$LINK $INSTALL_DIR/bindings $HOME/.ncmpcpp/bindings

