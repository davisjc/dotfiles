#!/bin/sh

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

$link $install_dir/zshrc $HOME/.zshrc
$link $install_dir/zprofile $HOME/.zprofile

if [ "$(uname)" = "Linux" ]; then
    $link $install_dir/zshrc.linux $HOME/.zshrc.linux
fi
if [ "$(uname)" = "Darwin" ]; then
    $link $install_dir/zshrc.osx $HOME/.zshrc.osx
fi

