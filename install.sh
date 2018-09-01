#!/bin/bash -xe
path="$( command readlink "$BASH_SOURCE" )" || path="$BASH_SOURCE"
parrent_dir="${path%/*}"
if [ "$parrent_dir" == "$path" ]; then
  parrent_dir=.
fi
repo_dir="$( command cd -P "$parrent_dir" > /dev/null && command pwd -P )"
dotfiles=$(find $repo_dir/dotfiles -maxdepth 1 -name ".*")
for file in $dotfiles; do
  if [ ! -e $HOME/$(basename $file) ]; then
    ln -s $file $HOME/
  fi
done