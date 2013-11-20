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

