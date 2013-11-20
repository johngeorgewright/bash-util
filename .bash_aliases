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

function git_sync
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

function push
{
  git_sync push $1
}

function pull
{
  git_sync pull $1
}

alias git_delete_tags="git tag -l | xargs git tag -d"

