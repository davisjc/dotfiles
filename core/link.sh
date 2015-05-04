#!/bin/sh
#
# This helper script creates a symlink only if the link has not already been
# established. If the symlink creation will overwrite an existing file, that
# file will be backed up as a .backup file.
#
# @author: Johnathan Davis
#

FILENAME=$1         # the name of the file to symlink
TARGET_DIR=$2       # the target of the symlink
SYMLINK_DIR=$3      # create the symlink in this directory

mkdir -p $SYMLINK_DIR

if [[ -f $SYMLINK_DIR/$FILENAME ]]; then
	# Target exists.
	if cmp $TARGET_DIR/$FILENAME $SYMLINK_DIR/$FILENAME >/dev/null 2>&1; then
		echo "         skipping: $FILENAME -- already installed"
	else
		echo "         installing: $FILENAME -- original is ${FILENAME}.backup"
		rm -r $SYMLINK_DIR/$FILENAME
		ln -s $TARGET_DIR/$FILENAME $SYMLINK_DIR/$FILENAME
	fi
else
	echo "       installing: $FILENAME"
	ln -s $TARGET_DIR/$FILENAME $SYMLINK_DIR/$FILENAME
fi

