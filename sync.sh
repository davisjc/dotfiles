#!/bin/sh
#
# This is the main entry point for the dotfiles setup.
#
# If this script has not been run before, all relevant dotfiles will be
# installed for the determined system. Subsequent runs will add any new
# dotfiles.
#
#
# The install process for each file essentially goes like this:
#
#     1. Copy the file to a backup if the file already exists.
#
#     2. Create a symlink to the corresponding file in the dotfiles repo.
#
#     3. Create a new .local file to allow for any machine-specific settings to
#        be run after running the version stored in the dotfiles repo.
#

