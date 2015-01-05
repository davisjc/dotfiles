#!/bin/sh

echo "  Loading dotfiles environment..."
source "$(cd $(dirname "$0"); pwd)/scripts/load_environment.sh"

echo "  Installing dependencies..."
$DOTFILES_SCRIPTS/install_deps.sh

# TODO: sync_package.sh for each dotfiles package.

echo "  Completed dotfiles sync."

