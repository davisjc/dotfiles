#!/bin/sh

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

mkdir -p $HOME/.ncmpc
$link $install_dir/config $HOME/.ncmpc/config
$link $install_dir/keys $HOME/.ncmpc/keys

