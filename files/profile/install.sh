#!/bin/sh

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

$link $install_dir/profile $HOME/.profile

if [ "$(uname)" = "FreeBSD" ]; then
    $link $install_dir/profile.freebsd $HOME/.profile.freebsd
fi
if [ "$(uname)" = "Linux" ]; then
    $link $install_dir/profile.linux $HOME/.profile.linux
fi
if [ "$(uname)" = "Darwin" ]; then
    $link $install_dir/profile.osx $HOME/.profile.osx
fi
