# completion
autoload -U compinit
compinit

# colors
autoload -U colors && colors

# automatically enter directories without cd
setopt \
  auto_cd \
  auto_menu \
  correct

# Do things to $PATH
export PATH=$HOME/.bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=/usr/local/lib/node_modules/npm/bin:$PATH
export PATH=/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:$PATH

# export ARCHFLAGS="-arch x86_64"
# export LANG="en_us.UTF-8"

# always show warnings
# always load rubygems
# export RUBYOPT="-w rubygems"
export RUBYOPT="rubygems"
export EDITOR=vim              # use vim as an editor
export GIT_EDITOR="$EDITOR -v" # use macvim as git editor

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

