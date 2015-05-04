#!/bin/sh

INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

$DOTFILES/core/link.sh .zshrc $INSTALL_DIR $HOME
$DOTFILES/core/link.sh .zprofile $INSTALL_DIR $HOME

