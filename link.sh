#!/bin/sh
#
# This helper script creates a symlink only if the link has not already been
# established. If the symlink creation will overwrite an existing file, that
# file will first be backed up as a "<original_name>.backup".
#
# @author: Johnathan Davis

if (( $# < 1 )); then
    echo "Please specify symlink target."
    kill -INT $$
fi
if (( $# < 2 )); then
    echo "Please specify destination path."
    kill -INT $$
fi

sym_target=$1
sym_path=$2
filename=$(basename $sym_path)

# Ensure destination path exists.
mkdir -p $(dirname $sym_path)

if [[ -e $sym_path || -L $sym_path ]]; then
    # Target exists.
    if cmp $sym_path $sym_target >/dev/null 2>&1; then
        echo "         skipping: $filename -- already installed"
    else
        echo "         installing: $filename -- original is $filename.backup"
        cp -r $sym_path $sym_path.backup
        rm -r $sym_path
        ln -s $sym_target $sym_path
    fi
else
    echo "         installing: $filename"
    ln -s $sym_target $sym_path
fi

