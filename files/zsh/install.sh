#!/usr/bin/env bash

link=$DOTFILES/link.sh
install_dir=$(cd "$(dirname "$0")"; pwd -P)

$link "$install_dir/zshrc" "$HOME/.zshrc"
$link "$install_dir/zprofile" "$HOME/.zprofile"
if hash rustup 2> /dev/null; then
    mkdir -p "$HOME/.zfunc"
    rustup completions zsh > "$install_dir/zfunc/_rustup"
    rustup completions zsh cargo > "$install_dir/zfunc/_cargo"
    $link "$install_dir/zfunc" "$HOME/.zfunc"
fi

if [ "$(uname)" = "Linux" ]; then
    $link "$install_dir/zshrc.linux" "$HOME/.zshrc.linux"
fi
if [ "$(uname)" = "Darwin" ]; then
    $link "$install_dir/zshrc.osx" "$HOME/.zshrc.osx"
fi

