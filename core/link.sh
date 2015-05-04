#!/bin/sh

FILENAME=$1
INSTALL_DIR=$2
TARGET_DIR=$3

mkdir -p $TARGET_DIR

if [[ -f $TARGET_DIR/$FILENAME ]]; then
	# Target exists.
	if cmp $INSTALL_DIR/$FILENAME $TARGET_DIR/$FILENAME >/dev/null 2>&1; then
		echo "         skipping: $FILENAME -- already installed"
	else
		echo "         installing: $FILENAME -- original is ${FILENAME}.backup"
		rm -r $TARGET_DIR/$FILENAME
		ln -s $INSTALL_DIR/$FILENAME $TARGET_DIR/$FILENAME
	fi
else
	echo "       installing: $FILENAME"
	ln -s $INSTALL_DIR/$FILENAME $TARGET_DIR/$FILENAME
fi

