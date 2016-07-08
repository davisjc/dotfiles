dotfiles
========

My dotfiles.

## Structure

All of the programs' files are stored in `files/`, and each program has a semantically-chosen directory name that groups related files, e.g.: `vim/` for vim, nvim and `x11/` for various X11 config files.

I wanted to avoid a magic installation solution that I'd have to fight against in strange corner cases, so the only common infrastructure is a simple linking script, [`link.sh`](link.sh), and the convention that each directory will have its own script named `install.sh` that will explicitly perform the necessary linking.  Since the linking is explicit, I can name the in-repo files whatever I want.  It's nice not needing to store the dotfiles with "." prefixes, since I find that unnecessarily hides the files you're trying to explicitly manage in a repo.

I've found that this approach allows for a great deal of flexibility when I only want certain files linked on certain types of machines.

## Installation

1. Clone to ~/dot
2. Run the root install.sh

Existing dotfiles should be properly backed up, but always do so yourself to be safe!

An example execution of [`install.sh`](install.sh):

```
$ ./install.sh

---> Installing dotfiles
       running /home/eddie/dot/files/dir_colors/install.sh...
         installing: .dir_colors
       running /home/eddie/dot/files/i3/install.sh...
         installing: config -- original is config.backup
         installing: i3blocks.conf
       running /home/eddie/dot/files/mpd/install.sh...
         skipping: black.jpg -- already installed
         skipping: mpd.conf -- already installed
       running /home/eddie/dot/files/mpv/install.sh...
         installing: input.conf
         installing: config
       running /home/eddie/dot/files/ncmpcpp/install.sh...
         skipping: config -- already installed
         skipping: bindings -- already installed
       running /home/eddie/dot/files/profile/install.sh...
         installing: .profile -- original is .profile.backup
         installing: .profile.linux
       running /home/eddie/dot/files/tmux/install.sh...
         skipping: .tmux.conf -- already installed
       running /home/eddie/dot/files/vim/install.sh...
         installing: .vimrc -- original is .vimrc.backup
         installing: .gvimrc
         installing: bootstrap
         installing: init.vim
         installing: nvim
         installing: aurora.vim
         running :VundleInstall..
       running /home/eddie/dot/files/x11/install.sh...
         skipping: .xvars -- already installed
         skipping: .xinitrc -- already installed
         skipping: .xsession -- already installed
         skipping: .Xresources -- already installed
         skipping: .Xmodmap -- already installed
         skipping: .xbindkeysrc -- already installed
         skipping: compton.conf -- already installed
       running /home/eddie/dot/files/zsh/install.sh...
         skipping: .zshrc -- already installed
         skipping: .zprofile -- already installed
         skipping: .zshrc.linux -- already installed
---> Installing dotfiles (local)
       running /home/eddie/dot.local/files/awscli/install.sh...
         skipping: config -- already installed
         skipping: credentials -- already installed
       running /home/eddie/dot.local/files/git/install.sh...
         skipping: .gitconfig -- already installed
       running /home/eddie/dot.local/files/irssi/install.sh...
         installing: config
         installing: startup
         installing: scripts
       running /home/eddie/dot.local/files/zsh/install.sh...
         installing: .zshrc.loc
---> Finished installing dotfiles

NOTE: You may have to re-login to ensure that the $DOTFILES variable has
      been successfully sourced into your shell.
```

