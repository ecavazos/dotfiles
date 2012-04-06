# expand functions in the prompt
setopt prompt_subst

function ruby_version() {
  ver=$(rbenv version | sed 's/-[^-]*$//')
  clr=$fg_bold[green]
  echo "%{$clr%}$ver%{$reset_color%}"
}

# set prompt
PROMPT='%{$reset_color%}%{$fg[blue]%}✖ %{$reset_color%}'
RPROMPT='`ruby_version``git-prompt`%{$reset_color%}'

