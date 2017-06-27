#!/bin/sh

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

if [ "$(uname)" = "Linux" ]; then
    mkdir -p $HOME/.ncmpcpp
    $link $install_dir/config.linux $HOME/.ncmpcpp/config
    $link $install_dir/bindings.linux $HOME/.ncmpcpp/bindings
elif [ "$(uname)" = "Darwin" ]; then
    $link $install_dir/config.osx $HOME/.ncmpcpp/config
    $link $install_dir/bindings.osx $HOME/.ncmpcpp/bindings
fi

