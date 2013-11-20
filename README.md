Bash Utils
==========

Utilities for my bash environment.

Installation
------------

1. Checkout the project:

  ```sh
  cd ~
  git clone $THIS_REPO
  ```

2. Add the aliases to your vim config:

  ```bash
  # ~/.bashrc
  if [ -f ~/bash-util/.bash_aliases ]
  then
    . ~/bash-util/.bash_aliases
  fi
  ```

API
---

### Change up directory

Sick of doing this: `cd ../../../`?

Now you can type `..` to change up 1 directory or `.. 3` to change up 3.

### Deleting all your local git tags

`git_delete_tags` is an alias of `git tag -l | xargs git tag -d` which will
delete all your local git tags.

### Push the current git branch

`push` checks the current branch you're working on and then pushes it to `origin`. If you want to override the remote, add it as the 1st parameter: `push production`.

### Pull the current git branch

`pull` checks the current branch you're working on and then pulls the same from `origin`. If you want to override the remote, add it as the 1st parameter: `pull production`.

