export PS1="\[\e[1;36m\]\W: \[\e[m\]"

export GEM_HOME="/usr/local/lib/ruby/gems/1.9.1"
export PATH="/usr/local/bin:$PATH"
# /usr/local/mysql/bin
export EDITOR='mvim'
export GIT_EDITOR=$EDITOR

RUBYOPT="rubygems" # always load rubygems
export RUBYOPT

# profile shortcuts
alias prof='$EDITOR ~/.bash_profile' # edit profile
alias rprof='. ~/.bash_profile' # reload profile

# misc
alias hm='cd ~' # home
alias repos='cd ~/repos'
alias gsrc='cd $GEM_HOME/gems' # gems source
alias bundles='cd ~/Library/Application\ Support/TextMate/Bundles'
alias nub="/Applications/GitNub.app/Contents/MacOS/GitNub"
alias cs='clear'
alias shdot='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias kf='killall Finder'
alias hdot='defaults write com.apple.finder AppleShowAllFiles FALSE'
alias sgun='shotgun -s thin -p 4567'
alias rswp='find ~/ -name "*.swp" -exec rm {} \;' # remove swp files
alias mongo='mongod run --config /usr/local/Cellar/mongodb/1.2.0-x86_64/mongod.conf'

# ls
alias ls="ls -F"
alias l="ls -lAh"
alias ll="ls -l"
alias la='ls -A'

# cd shortcuts
alias up1='cd ../'
alias up2='cd ../../'
alias up3='cd ../../../'
alias up4='cd ../../../../'

# git stuff
alias ga='git add'
alias gb='git branch -a -v'
alias gco='git commit'
alias gcoa='git commit -a'
alias gd='git diff'
alias gi='git status; echo; git branch -a -v'
alias gm='git merge'
alias gnb=' git co -b' # must pass new branch name
alias gs='git status'
alias gt='git tag'
alias gx='gitx'
alias gpo='git push origin' #branch
alias gpom='git push origin master'

# rails
alias sc='script/console'
alias ss='script/server'
alias sg='script/generate'
alias a='autotest -rails'
alias tlog='tail -f log/development.log'
alias scaffold='script/generate nifty_scaffold'
alias migrate='rake db:migrate db:test:clone'
alias rst='touch tmp/restart.txt'

alias dua='du -chd 1'
alias duv='du -sch ./*'
alias duh='du -sch ./.*'

alias sgi64="sudo env ARCHFLAGS=\"-Os -arch x86_64 -fno-common\" gem install --no-ri --no-rdoc"

if [[ -s /Users/Emilio/.rvm/scripts/rvm ]] ; then source /Users/Emilio/.rvm/scripts/rvm ; fi

