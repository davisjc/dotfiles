#!/bin/sh

LINK=$DOTFILES/core/link.sh

INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

$LINK .profile $INSTALL_DIR $HOME

