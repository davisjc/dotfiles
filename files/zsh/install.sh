#!/bin/sh

LINK=$DOTFILES/core/link.sh
INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

$LINK $INSTALL_DIR/zshrc $HOME/.zshrc
$LINK $INSTALL_DIR/zprofile $HOME/.zprofile

if [[ "$(uname)" == "Linux" ]]; then
	$LINK $INSTALL_DIR/zshrc.linux $HOME/.zshrc.linux
fi
if [[ "$(uname)" == "Darwin" ]]; then
	$LINK $INSTALL_DIR/zshrc.osx $HOME/.zshrc.osx
fi
