#!/bin/bash

# Download dotfiles
DOTFILES=$HOME/.dotfiles
git clone https://github.com/szkkentaro/dotfiles.git $DOTFILES

# Expand dotfiles
FILE_LIST=("bashrc" "bash_profile" "gitconfig" "vimrc")
for FILE in ${FILE_LIST[@]}
do
  if [ -e $HOME/.$FILE ]; then
    mv $HOME/.$FILE{,.`date +%Y%m%d%H%M%S`}
  fi
  ln -s $DOTFILES/$FILE $HOME/.$FILE
done

# Install vim
brew reinstall vim --with-lua

# Download Vundle
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

# Vim PluginInstall
echo "+PluginInstall +qall" | xargs sh -c '/usr/local/bin/vim "$@" < /dev/tty' -
echo "+VimProcInstall +qall" | xargs sh -c '/usr/local/bin/vim "$@" < /dev/tty' -
echo "+GoInstallBinaries +qall" | xargs sh -c '/usr/local/bin/vim "$@" < /dev/tty' -

# Vim Colors
mkdir -p ~/.vim/colors

# Vim Color Scheme
ln -s ~/.vim/bundle/landscape.vim/colors/landscape.vim ~/.vim/colors/landscape.vim

# Setup git USER
git config --global user.name "$USER_NAME"
git config --global user.email "$USER_EMAIL"

# Install Powerline
# brew tap sanemat/font
# brew reinstall --powerline --vim-powerline ricty
