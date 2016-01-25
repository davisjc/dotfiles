#!/bin/sh

LINK=$DOTFILES/core/link.sh
INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

mkdir -p $HOME/.config/mpd
mkdir -p $HOME/.config/mpd/art
mkdir -p $HOME/.config/mpd/playlists
touch $HOME/.config/mpd/log
touch $HOME/.config/mpd/pid
touch $HOME/.config/mpd/state
touch $HOME/.config/mpd/sticker.sql

if [[ "$(uname)" == "Linux" ]]; then
    $LINK $INSTALL_DIR/mpd.conf.linux $HOME/.config/mpd/mpd.conf
    $LINK $INSTALL_DIR/black.jpg $HOME/.config/mpd/art/black.jpg
fi

