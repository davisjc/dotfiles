#!/bin/sh
#
# Prepares environment variables necessary for the dotfiles scripts to operate.
# This file should be sourced, not executed directly.
#

DOTFILES_ROOT=$(cd $(dirname "$0")/../..; pwd)
DOTFILES_CORE="$DOTFILES_ROOT/core"
DOTFILES_SCRIPTS="$DOTFILES_CORE/scripts"
DOTFILES_SETTINGS="$DOTFILES_CORE/settings.conf"

source "$DOTFILES_SETTINGS"

