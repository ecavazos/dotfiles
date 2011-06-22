# completion
autoload -U compinit
compinit

# colors
autoload -U colors && colors

# automatically enter directories without cd
setopt auto_cd

# path to gems
export GEM_HOME="/usr/local/lib/ruby/gems/1.9.1"

# add my bin path
export PATH="/usr/local/mysql/bin:/usr/local/bin:$PATH;"

# always load rubygems
RUBYOPT="rubygems"
export RUBYOPT

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
bindkey -v

# use incremental search
bindkey ^R history-incremental-search-backward

# expand functions in the prompt
setopt prompt_subst

# set prompt
PROMPT='%{$reset_color%}`git-prompt`%(!.#.>) '

# ignore duplicate history entries
setopt histignoredups

# keep more history
export HISTSIZE=200

# rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
