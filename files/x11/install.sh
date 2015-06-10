#!/bin/sh

if [[ "$(uname)" != "Linux" ]]; then
    exit 0
fi

LINK=$DOTFILES/core/link.sh
INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

$LINK $INSTALL_DIR/xinitrc $HOME/.xinitrc
$LINK $INSTALL_DIR/xsession $HOME/.xsession
$LINK $INSTALL_DIR/Xresources $HOME/.Xresources
$LINK $INSTALL_DIR/Xmodmap $HOME/.Xmodmap

mkdir -p $HOME/.config
$LINK $INSTALL_DIR/compton.conf $HOME/.config/compton.conf

