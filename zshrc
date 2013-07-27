# enable completion
autoload -U compinit
compinit

# emacs
bindkey -e

# source additional config files
if [[ $SHLVL < 3 ]]; then
  for f in $HOME/.zsh/*; do
    source $f
  done
fi

zstyle ":completion:*" verbose yes

# Fuzzy matching of completions for when you mistype them
zstyle ":completion:*" completer _complete _match _approximate
zstyle ":completion:*:match:*" original only
zstyle ":completion:*:approximate:*" max-errors 2 numeric

# colors
autoload -U colors && colors

setopt           \
	append_history \
	auto_cd        \
	auto_menu      \
	auto_pushd     \
	correct        \
	histignoredups \
	pushd_silent   \
	share_history

# always show warnings
# always load rubygems
# export RUBYOPT="-w rubygems"
export RUBYOPT="rubygems"
export EDITOR=vim              # use vim as an editor
export GIT_EDITOR="$EDITOR -v" # use vim as git editor

HISTSIZE=100000
HISTFILE="$HOME/.history"
SAVEHIST=$HISTSIZE
DIRSTACKSIZE=9

# use incremental search
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^S" history-incremental-pattern-search-forward

if type rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

