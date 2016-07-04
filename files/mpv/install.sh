#!/bin/sh

if [ "$(uname)" != "Linux" ]; then
    exit 0
fi

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

mkdir -p $HOME/.mpv
$link $install_dir/input.conf $HOME/.mpv/input.conf
$link $install_dir/config $HOME/.mpv/config

