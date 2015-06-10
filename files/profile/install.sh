#!/bin/sh

LINK=$DOTFILES/core/link.sh
INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

$LINK $INSTALL_DIR/profile $HOME/.profile

if [[ "$(uname)" == "Linux" ]]; then
    $LINK $INSTALL_DIR/profile.linux $HOME/.profile.linux
fi
if [[ "$(uname)" == "Darwin" ]]; then
    $LINK $INSTALL_DIR/profile.osx $HOME/.profile.osx
fi
