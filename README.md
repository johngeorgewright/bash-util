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

### Git

- `g` is aliased to `git`
- `gadd` is aliased to `git add -A`
- `gcommit` is aliased to `git commit`
- `gdeltags` is aliased to `git tag -l | xargs git tag -d`
- `gpush` will push the current working branch to a given remote (origin by default)
- `gpull` will pull down the current branch from a given remote (origin by default)

