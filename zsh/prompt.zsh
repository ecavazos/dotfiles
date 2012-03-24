# expand functions in the prompt
setopt prompt_subst

function ruby_version() {
  ver=$(rvm current | sed 's/-[^-]*$//')
  color=$fg_bold[green]
  echo "%{$color%}$ver%{$reset_color%}"
}

# set prompt
PROMPT='%{$reset_color%}%{$fg[blue]%}✖ '
RPROMPT='`ruby_version``git-prompt`%{$reset_color%}'

