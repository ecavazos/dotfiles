alias c='cd ~/code/alchemy'
alias w='cd ~/code/work'
alias d='cd ~/dotfiles'

alias be='bundle exec'
alias rs='be rspec'

alias 193='rbenv global 1.9.3-p194'
alias 193p0='rbenv global 1.9.3-p0'
alias 187='rbenv global ree-1.8.7-2012.02'

alias up='cd ..'

alias g='git'
alias gadd='git add -u && git add . && git status'
alias gmm='g fetch origin && g branch -a --merged master'

alias tlf='tail -f'

alias ls='ls --color=auto'

if [[ `uname` == "Darwin" ]]; then
  alias ls='ls -G'
  alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
fi

# -------------------------------------------------------------------------
# profile shortcuts
# -------------------------------------------------------------------------

# open zshrc in editor
alias pr='$EDITOR ~/.zshrc'

# reload zshrc
alias sp='source ~/.zshrc'

