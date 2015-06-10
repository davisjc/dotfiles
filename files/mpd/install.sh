#!/bin/sh

LINK=$DOTFILES/core/link.sh
INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

mkdir -p $HOME/.config/mpd
$LINK $INSTALL_DIR/mpd.conf $HOME/.config/mpd/mpd.conf

