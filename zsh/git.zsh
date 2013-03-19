# https://github.com/bryanl/zshkit/blob/0ac7145963f8a508337d880771d17452e803e248/06_git

if [[ -x `which git` ]]; then

  function git-branch-name () {
    git branch 2> /dev/null | grep '^\*' | sed 's/^\*\ //'
  }

  function git-need-to-push() {
    if pushtime=$(git status | grep 'Your branch is ahead' 2> /dev/null); then
      echo "↑ "
    fi
  }

  function git-prompt() {
    gstatus=$(git status 2> /dev/null)
    branch=$(echo $gstatus | head -1 | sed 's/^# On branch //')
    dirty=$(echo $gstatus | sed 's/^#.*$//' | tail -2 | grep "nothing to commit"; echo $?)
    if [[ x$branch != x ]]; then
      dirty_color=$fg[green]
      push_status=$(git-need-to-push)
      if [[ $dirty = 1 ]] { dirty_color=$fg[red] }
      [ x$branch != x ] && echo " %{$dirty_color%}$branch%{$reset_color%} $push_status"
    fi
  }
fi

