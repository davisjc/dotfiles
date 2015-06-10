#!/bin/sh

LINK=$DOTFILES/core/link.sh
INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

if [[ "$(uname)" == "Linux" ]]; then
    mkdir -p $HOME/.ncmpcpp
    $LINK $INSTALL_DIR/config.linux $HOME/.ncmpcpp/config
    $LINK $INSTALL_DIR/bindings.linux $HOME/.ncmpcpp/bindings
fi

