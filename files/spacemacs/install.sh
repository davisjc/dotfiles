#!/bin/sh

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

$link $install_dir/spacemacs $HOME/.spacemacs

