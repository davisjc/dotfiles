#!/bin/sh

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

$link $install_dir/spacemacs $HOME/.spacemacs
$link $install_dir/themes/borealis.el $HOME/.emacs.d/private/local/borealis.el
$link $install_dir/themes/vim-aurora.el $HOME/.emacs.d/private/local/vim-aurora.el

