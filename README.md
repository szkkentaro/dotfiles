dotfiles
========

# Install
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/szkkentaro/dotfiles.git ~/Documents/dotfiles
chmod +x ~/Documents/dotfiles/init.sh
bash ~/Documents/dotfiles/init.sh
curl -sL 'https://github.com/Lokaltog/powerline-fonts/blob/master/DroidSansMono/Droid%20Sans%20Mono%20for%20Powerline.otf?raw=true' -o ~/Library/Fonts/Droid\ Sans\ Mono\ for\ Powerline.otf
vim +PluginInstall +qall
mkdir -p ~/.vim/colors
ln -s ~/.vim/bundle/landscape.vim/colors/landscape.vim ~/.vim/colors/landscape.vim
