#!/bin/sh

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

$link $install_dir/vimrc $HOME/.vimrc
$link $install_dir/gvimrc $HOME/.gvimrc

mkdir -p $HOME/.vim
$link $install_dir/autoload $HOME/.vim/autoload
$link $install_dir/vimrc $HOME/.vim/init.vim
$link $HOME/.vim $HOME/.config/nvim

mkdir -p $HOME/.vim/colors
$link $install_dir/colors/aurora.vim $HOME/.vim/colors/aurora.vim

echo "         running :PlugInstall.."
vim +PlugInstall +qall

