#!/bin/sh

LINK=$DOTFILES/core/link.sh
INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

if [[ "$(uname)" == "Linux" ]]; then
    mkdir -p $HOME/.config/mpd
    $LINK $INSTALL_DIR/mpd.conf.linux $HOME/.config/mpd/mpd.conf
fi

