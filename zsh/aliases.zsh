alias c='cd ~/code/alchemy'
alias w='cd ~/code/work'
alias d='cd ~/code/alchemy/dotfiles'

alias be='bundle exec'
alias rs='be rspec'

alias migrate='be rake db:migrate db:test:prepare'
alias remigrate='be rake db:migrate && rake db:migrate:redo && rake db:schema:dump db:test:prepare'
alias remongrate='be rake mongoid:migrate && rake mongoid:migrate:redo'

alias g='git'
alias gadd='git add -u && git add . && git status'
alias gmm='g fetch origin && g branch -a --merged master'

alias tlf='tail -f'

alias md='mongod run --config /usr/local/Cellar/mongodb/1.4.3-x86_64/mongod.conf'

# -------------------------------------------------------------------------
# profile shortcuts
# -------------------------------------------------------------------------

# open zshrc in editor
alias pr='$EDITOR ~/.zshrc'

# reload zshrc
alias sp='source ~/.zshrc'

