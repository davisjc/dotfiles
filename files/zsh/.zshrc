
# Colors!
autoload colors; colors;

# Load some plugins.
plugins=(colored-man sprunge extract)
for plugin in "${plugins[@]}"; do
	source ~/.zshplugins/$plugin/$plugin.plugin.zsh
done

# ZSH completion (man zshcompsys).
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' format ''
zstyle ':completion:*' glob 1
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*' insert-unambiguous false
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' '+m:{[:lower:]}={[:upper:]}' '+r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' substitute 1
zstyle ':completion:*' verbose true
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'

# ZSH options (man zshoptions).
setopt always_to_end        # move cursor to end of word after completion
setopt auto_pushd           # automatically pushd on cd
setopt complete_in_word     # perform bi-directional completion from position
setopt extended_glob        # use #,~,^ for filename generation
setopt extended_history     # save time info to histfile
setopt hist_ignore_space    # don't write space-prefixed commands to histfile
setopt hist_verify          # reload history expansion in command buffer
setopt inc_append_history   # multiple zsh instances write to same histfile
setopt long_list_jobs       # list jobs in long format
setopt no_match             # print error when no match for filename generation
setopt notify               # print status of background jobs immediately
setopt prompt_subst         # perform expansion in prompts
setopt pushd_ignore_dups    # don't pushd duplicate dirs
setopt pushd_silent         # suppress popd output
unsetopt beep               # be quiet, you..
unsetopt flow_control       # don't use ctrl-s/ctrl-q for shell flow control
unsetopt share_history      # favor inc_append_history

# Load ZSH completion.
autoload -Uz compinit
compinit -i

# Define ZSH's definition of a "word".
autoload select-word-style
select-word-style shell

# Compile zcompdump if necessary.
if [ ~/.zcompdump -nt ~/.zcompdump.zwc -o ! -e ~/.zcompdump.zwc ]; then
  zcompile ~/.zcompdump
fi

# Shell history.
HISTSIZE=10000
SAVEHIST=1000

# Setup vim keys (bindkey -v needs to happen before the mass key[] fix).
bindkey -v
KEYTIMEOUT=0 # don't delay esc

# Fix bindings in zle (pulled from arch wiki).
typeset -A key
key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}
[[ -n "${key[Home]}"     ]]  && bindkey  "${key[Home]}"     beginning-of-line
[[ -n "${key[End]}"      ]]  && bindkey  "${key[End]}"      end-of-line
[[ -n "${key[Insert]}"   ]]  && bindkey  "${key[Insert]}"   overwrite-mode
[[ -n "${key[Delete]}"   ]]  && bindkey  "${key[Delete]}"   delete-char
[[ -n "${key[Up]}"       ]]  && bindkey  "${key[Up]}"       up-line-or-history
[[ -n "${key[Down]}"     ]]  && bindkey  "${key[Down]}"     down-line-or-history
[[ -n "${key[Left]}"     ]]  && bindkey  "${key[Left]}"     backward-char
[[ -n "${key[Right]}"    ]]  && bindkey  "${key[Right]}"    forward-char
[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"   beginning-of-buffer-or-history
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}" end-of-buffer-or-history
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
    function zle-line-init () {
        printf '%s' "${terminfo[smkx]}"
    }
    function zle-line-finish () {
        printf '%s' "${terminfo[rmkx]}"
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi

# Load theme -- TODO: DIY.
source ~/.bureau.zsh-theme

# Fix some binds.
bindkey "^R" history-incremental-search-backward

# -----------------------------------------------------------------------------

alias ls='LC_COLLATE=C ls --color=auto --group-directories-first'
alias l='ls -lh'
alias ll='ls -lh'
alias la='ls -a'
alias lla='ls -lah'
alias info='info --vi-keys'
alias g='git'
alias mosh='mosh -a'

alias shutdown='sudo systemctl poweroff'
alias poweroff='sudo systemctl poweroff'
alias reboot='sudo systemctl reboot'
alias wifi='sudo wifi-menu'

# TODO: Use separate clipboard mechanism.
alias yp='pwd | xclip -i'
alias pp='cd `xclip -o`'

# Load machine-specific stuff.
if [ -f ~/.zshrc.loc ]; then
	source ~/.zshrc.loc
fi

