# expand functions in the prompt
setopt prompt_subst

function ruby_version() {
  if type rbenv > /dev/null; then
    ver=$(rbenv version | sed "s/[  ].*$//")
    clr=$fg[gray]
    echo "%{$clr%}$ver%{$reset_color%}"
  fi
}

autoload -Uz vcs_info

zstyle ":vcs_info:*" check-for-changes true
zstyle ":vcs_info:*" unstagedstr "%F{red}[u]"
zstyle ":vcs_info:*" stagedstr "%F{blue}[s]"
zstyle ":vcs_info:*" formats "%F{yellow}(%b)%u%c"
zstyle ":vcs_info:*" enable git

precmd() { vcs_info }

# set prompt
PROMPT="%F{blue}%1~ %F{green}>%f "
RPROMPT='${vcs_info_msg_0_}%f' # needs to be a single quoted string for vcs_info_msg_0_ to interpolate
