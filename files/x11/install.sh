#!/bin/sh

LINK=$DOTFILES/core/link.sh

INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

$LINK .xinitrc $INSTALL_DIR $HOME
$LINK .xsession $INSTALL_DIR $HOME

