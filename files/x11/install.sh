#!/bin/sh

if [ "$(uname)" != "Linux" -a "$(uname)" != "FreeBSD" ]; then
    exit 0
fi

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

$link $install_dir/xvars $HOME/.xvars
$link $install_dir/xinitrc $HOME/.xinitrc
$link $install_dir/xsession $HOME/.xsession
$link $install_dir/Xresources $HOME/.Xresources

if ! uname -a | grep "Ubuntu" > /dev/null; then
    $link $install_dir/Xmodmap $HOME/.Xmodmap
fi

if [ "$(hostname)" = "marvin" ]; then
    $link $install_dir/xbindkeysrc-marvin $HOME/.xbindkeysrc
fi

mkdir -p $HOME/.config
$link $install_dir/compton.conf $HOME/.config/compton.conf

