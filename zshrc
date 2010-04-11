# completion
autoload -U compinit
compinit

# colors
autoload -U colors && colors

# automatically enter directories without cd
setopt auto_cd

# use vim as an editor
export EDITOR=mvim

# use macvim as git editor
export GIT_EDITOR=$EDITOR

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# vi mode
bindkey -v

# use incremental search
bindkey ^R history-incremental-search-backward

# expand functions in the prompt
setopt prompt_subst

# set prompt to the current directory in red ex: "Stuff: "
export PS1="%{$terminfo[bold]$fg[red]%}%1d: %{$reset_color%}"

# ignore duplicate history entries
setopt histignoredups

# keep more history
export HISTSIZE=200
