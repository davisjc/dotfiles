#!/bin/sh

if [ "$(uname)" != "Linux" ]; then
    exit 0
fi

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

mkdir -p $HOME/.i3
$link $install_dir/config $HOME/.i3/config
$link $install_dir/i3blocks.conf $HOME/.i3/i3blocks.conf

