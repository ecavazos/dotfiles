# expand functions in the prompt
setopt prompt_subst

function ruby_version() {
  if type rbenv > /dev/null; then
    ver=$(rbenv version | sed 's/[  ].*$//')
    clr=$fg_bold[gray]
    echo "%{$clr%}$ver%{$reset_color%}"
  fi
}

# set prompt
PROMPT='%{$reset_color%}%{$fg_bold[red]%}%~
%{$fg[magenta]%}-- %{$reset_color%}'
RPROMPT='`ruby_version``git-prompt`%{$reset_color%}'

