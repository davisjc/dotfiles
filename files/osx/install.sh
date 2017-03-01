#!/bin/sh

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

if [ "$(uname)" = "Darwin" ]; then
    mkdir -p $HOME/Library/KeyBindings
    $link $install_dir/DefaultKeyBinding.dict $HOME/Library/KeyBindings/DefaultKeyBinding.dict
fi

