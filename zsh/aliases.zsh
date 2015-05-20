alias c="cd ~/code"
alias d="$EDITOR ~/code/dotfiles"
alias dt="cd ~/code/dotfiles"

alias be="bundle exec"
alias rs="be rspec"

alias 193="rbenv global 1.9.3-p194"
alias 193p0="rbenv global 1.9.3-p0"
alias 187="rbenv global ree-1.8.7-2012.02"

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

