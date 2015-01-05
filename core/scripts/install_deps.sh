#!/bin/sh
#
# This script will install common dependencies specific to your environment.
#

source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/load_environment.sh"

if $DOTFILES_ENV/archlinux.sh; then
	sudo pacman -Syyu
	sudo pacman -S \
		calc \
		git \
		gvim \
		htop \
		openssh \
		pkgfile \
		ranger \
		screen \
		tree \
		wget \
		zsh \
		xsel
fi

