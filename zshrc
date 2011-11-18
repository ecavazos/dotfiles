# completion
autoload -U compinit
compinit

# colors
autoload -U colors && colors

# automatically enter directories without cd
setopt auto_cd

# for mysql :(
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"

# add my bin path
export PATH="/usr/local/lib/node_modules/npm/bin:/usr/local/mysql/bin:/usr/local/bin:$PATH"

export ARCHFLAGS="-arch x86_64"
export LANG="en_us.UTF-8"
export CC=/usr/bin/gcc-4.2

# always show warnings
# always load rubygems
# export RUBYOPT="-w rubygems"
export RUBYOPT="rubygems"

# use vim as an editor
export EDITOR=mvim

# use macvim as git editor
export GIT_EDITOR='$EDITOR -f -c"au VimLeave * !open -a Terminal"'

# source additional config files
if [[ $SHLVL < 3 ]]; then
  for f in $HOME/.zsh/*; do
    source $f
  done
fi

# vi mode
# bindkey -v

# use incremental search
bindkey ^R history-incremental-search-backward

# expand functions in the prompt
setopt prompt_subst

# set prompt
PROMPT='%{$reset_color%}`git-prompt`%(!.#.>) '

# ignore duplicate history entries
setopt histignoredups

# Unbreak history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
