#!/bin/sh

LINK=$DOTFILES/core/link.sh
INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

$LINK $INSTALL_DIR/vimrc $HOME/.vimrc

mkdir -p $HOME/.vim
$LINK $INSTALL_DIR/bootstrap $HOME/.vim/bootstrap

mkdir -p $HOME/.vim/colors
$LINK $INSTALL_DIR/colors/aurora.vim $HOME/.vim/colors/aurora.vim

