#!/bin/sh
#
# This is the main entry point for my dotfiles setup.
#
# Install scripts found at $DOTFILES/*/*.install.sh will be executed to symlink
# files into the home directory. Existing files in the home directory will be
# backed up to .backup files (note that this will only save you once, only the
# most current file will be saved as .backup; running this script twice in a
# row will obliterate any target files currently in the home directory).
#
# Machine specific settings can by saved as .loc files in many instances, e.g.,
# a ~/.zshrc.loc may be specified with additional settings for zsh
#
# @author: Johnathan Davis
#

export DOTFILES=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

echo
echo "---> Installing dotfiles"

for install_script in $DOTFILES/files/*/install.sh; do
	echo "       running $install_script..."
	$install_script
done

echo "---> Finished installing dotfiles"

echo
echo 'NOTE: You may have to re-login to ensure that the $DOTFILES variable has'
echo '      been successfully sourced into your shell.'

