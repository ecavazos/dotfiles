alias c="cd ~/code"
alias d="cd ~/code/dotfiles"
alias de="$EDITOR ~/code/dotfiles"

alias br="bin/rails"
alias be="bundle exec"

alias rs="be rspec"

alias h="cd ~"
alias up="cd .."

alias g="git"
alias gadd="git add -u && git add . && git status"
alias gmm="g fetch origin && g branch -a --merged master"

alias tlf="tail -f"

alias ls="ls --color=auto"

# Attach to a tmux session and detach other clients
alias ta="tmux a -d"

if [[ `uname` == "Darwin" ]]; then
  alias ls="ls -G"
  alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
fi

# open zshrc in editor
alias pr="$EDITOR ~/.zshrc"
alias ez="exec zsh"

