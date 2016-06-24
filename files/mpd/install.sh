#!/bin/sh

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

mkdir -p $HOME/.config/mpd
mkdir -p $HOME/.config/mpd/art
mkdir -p $HOME/.config/mpd/playlists
touch $HOME/.config/mpd/log
touch $HOME/.config/mpd/pid
touch $HOME/.config/mpd/state
touch $HOME/.config/mpd/sticker.sql

if [[ "$(uname)" == "Linux" ]]; then
    $link $install_dir/black.jpg $HOME/.config/mpd/art/black.jpg
fi

if [[ "$(hostname)" == "ford" ]]; then
    $link $install_dir/mpd.conf.carputer $HOME/.config/mpd/mpd.conf
elif [[ "$(uname)" == "Linux" ]]; then
    $link $install_dir/mpd.conf.linux $HOME/.config/mpd/mpd.conf
fi

