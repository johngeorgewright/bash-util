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

alias git_delete_tags="git tag -l | xargs git tag -d"

