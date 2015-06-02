#!/bin/sh

if [[ "$(uname)" != "Linux" ]]; then
	exit 0
fi

LINK=$DOTFILES/core/link.sh
INSTALL_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

mkdir -p $HOME/.i3
$LINK $INSTALL_DIR/config $HOME/.i3/config

