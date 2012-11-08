# completion
autoload -U compinit
compinit

# colors
autoload -U colors && colors

# automatically enter directories without cd
setopt auto_cd

# add my bin path
export PATH="$HOME/.bin:$HOME/.rbenv/bin:/usr/local/lib/node_modules/npm/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:$PATH"

# for mysql :(
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export CC=/usr/local/bin/gcc-4.2
# export ARCHFLAGS="-arch x86_64"
# export LANG="en_us.UTF-8"

# always show warnings
# always load rubygems
# export RUBYOPT="-w rubygems"
export RUBYOPT="rubygems"

# use vim as an editor
export EDITOR=mvim

# use macvim as git editor
export GIT_EDITOR="$EDITOR -v"

# source additional config files
if [[ $SHLVL < 3 ]]; then
  for f in $HOME/.zsh/*; do
    source $f
  done
fi

# use incremental search
bindkey '^R' history-incremental-search-backward

# ignore duplicate history entries
setopt histignoredups

# Unbreak history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

if type rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

