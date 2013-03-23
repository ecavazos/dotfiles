# expand functions in the prompt
setopt prompt_subst

function ruby_version() {
  if type rbenv > /dev/null; then
    ver=$(rbenv version | sed 's/[  ].*$//')
    clr=$fg[gray]
    echo "%{$clr%}$ver%{$reset_color%}"
  fi
}

autoload -Uz vcs_info

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' unstagedstr '%F{red}[u]'
zstyle ':vcs_info:*' stagedstr '%F{blue}[s]'
zstyle ':vcs_info:*' formats "%F{yellow}%b %m%u%c"
zstyle ':vcs_info:*' enable git

precmd() {
  vcs_info
}

# set prompt
PROMPT='%{$fg[magenta]%}%~ %{$fg[green]%}$%{$reset_color%} '
RPROMPT='${vcs_info_msg_0_}%{$reset_color%}'

