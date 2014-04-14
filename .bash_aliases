function swap
{
  if [ $# -ne 2 ]
  then
    echo "Usage: swap file1 file2"
  else
    local TMPFILE=$(mktemp)
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
  fi
}

function ..
{
  if [ "$1" ]
  then
    num=$1
  else
    num=1
  fi

  while [ $num -gt 0 ]
  do
    cd ..
    let "num=$num-1"
  done
}

function gsync
{
  action=$1
  remote=origin
  if [ "$2" ]
  then
    let "remote=$2"
  fi
  branch=`git rev-parse --abbrev-ref HEAD`
  git $action $remote $branch
}

function gpush
{
  gsync push $1
}

function gpull
{
  gsync pull $1
}

alias be="bundle exec"
alias g="git"
alias gadd="git add -A"
alias gcommit="git commit"
alias gdeltags="git tag -l | xargs git tag -d"
alias gstatus="git status -sb"

