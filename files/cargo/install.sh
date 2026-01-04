#!/bin/bash

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

mkdir -p $HOME/.cargo
$link $install_dir/config.toml $HOME/.cargo/config.toml
