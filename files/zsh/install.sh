#!/bin/sh

LINK=$DOTFILES/core/link.sh

INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

$LINK .zshrc $INSTALL_DIR $HOME
$LINK .zprofile $INSTALL_DIR $HOME

