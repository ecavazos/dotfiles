# expand functions in the prompt
setopt prompt_subst

function ruby_version() {
  echo $(rvm current) | sed 's/-[^-]*$//'
}

dirty_color=$fg[green]

# set prompt
PROMPT='%{$reset_color%}%{$fg[blue]%}✖ '
RPROMPT='%{$dirty_color%}`ruby_version``git-prompt`%{$reset_color%}'

