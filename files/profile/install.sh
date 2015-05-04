#!/bin/sh

INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

$DOTFILES/core/link.sh .profile $INSTALL_DIR $HOME

