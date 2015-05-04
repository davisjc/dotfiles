
#!/bin/sh

export DOTFILES=$HOME/dot/files
export HISTFILE=$HOME/.histfile
export EDITOR=vim
export VISUAL=vim
export GIT_EDITOR=vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'

# SSH.
killall ssh-agent >& /dev/null
eval "$(ssh-agent -s)" > /dev/null

# Colors!
source $HOME/.dir_colors

ulimit -c unlimited

# Completely disable ctrl-s/ctrl-q shell flow control.
stty -ixon

