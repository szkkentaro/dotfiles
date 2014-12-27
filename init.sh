#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"
FILE_LIST=("bashrc" "bash_profile" "gitconfig" "vimrc")

for FILE in ${FILE_LIST[@]}
do
  if [ -e $HOME/.$FILE ]; then
    mv $HOME/.$FILE{,.`date +%Y%m%d%H%M%S`}
  fi
  CMD="ln -s $SCRIPT_DIR/$FILE $HOME/.$FILE"
  `$CMD` && echo "$CMD"
done
echo "Done!"
