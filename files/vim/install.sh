#!/bin/sh

LINK=$DOTFILES/core/link.sh
INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

$LINK $INSTALL_DIR/vimrc $HOME/.vimrc
$LINK $INSTALL_DIR/gvimrc $HOME/.gvimrc

mkdir -p $HOME/.vim
$LINK $INSTALL_DIR/bootstrap $HOME/.vim/bootstrap
$LINK $INSTALL_DIR/vimrc $HOME/.vim/init.vim
$LINK $HOME/.vim $HOME/.config/nvim

mkdir -p $HOME/.vim/colors
$LINK $INSTALL_DIR/colors/aurora.vim $HOME/.vim/colors/aurora.vim

echo "         running :VundleInstall.."
vim +VundleInstall +qall

