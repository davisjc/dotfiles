#!/bin/sh

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

mkdir -p "$HOME/.ipython/profile_default"
$link "$install_dir/ipython_config.py" "$HOME/.ipython/profile_default/ipython_config.py"
