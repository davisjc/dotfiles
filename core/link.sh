#!/bin/sh
#
# This helper script creates a symlink only if the link has not already been
# established. If the symlink creation will overwrite an existing file, that
# file will be backed up as a .backup file.
#
# @author: Johnathan Davis
#


# Parameters.

local SOURCE_FILE=$1  # the target of the symlink
local LINK=$2         # the path to the symlink


# Internal variables.

local FILENAME=$(basename $LINK)


# Ensure destination path exists.
mkdir -p `dirname $LINK`

if [[ -f $LINK ]]; then
	# Target exists.
	if cmp $LINK $SOURCE_FILE >/dev/null 2>&1; then
		echo "         skipping: $FILENAME -- already installed"
	else
		echo "         installing: $FILENAME -- original is ${FILENAME}.backup"
		rm -r $LINK
		ln -s $SOURCE_FILE $LINK
	fi
else
	echo "         installing: $FILENAME"
	ln -s $SOURCE_FILE $LINK
fi

