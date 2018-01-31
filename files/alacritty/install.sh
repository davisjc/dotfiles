#!/bin/sh

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

mkdir -p $HOME/.config/alacritty
$link $install_dir/alacritty.yml $HOME/.config/alacritty/alacritty.yml
