#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"
FILE_LIST=("bashrc" "bash_profile" "gitconfig" "vimrc")

for FILE in ${FILE_LIST[@]}
do
  if [ ! -e $HOME/.$FILE ]; then
    CMD="ln -s $SCRIPT_DIR/$FILE $HOME/.$FILE"
    `$CMD` && echo "$CMD"
  fi
done
echo "Done!"
