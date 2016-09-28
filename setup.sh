#!/bin/bash

# install oh-my-zsh
sudo apt-get install zsh
curl -L http://install.ohmyz.sh > ohmyzsh.sh
bash ohmyzsh.sh
rm ohmyzsh.sh

# copy theme 
cp lambda-mod.zsh-theme ~/.oh-my-zsh/themes/

# overide zsh config
if [ ! -f ~/.zshrc ]; then
  mv ~/.zshrc ~/.zshrc.bak
fi
cp .zshrc ~/.zshrc
source ~/.zshrc

# Setup Nerd Font
mkdir -p ~/.local/share/fonts
curl -fLo temp.otf https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
mv temp.otf ~/.local/share/fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf
echo "You should change your terminal's font and use Droid Sans Mono for Powerline"

# VIM
# download vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

./vim/colors/molokai.sh
cp -f vim/.vimrc ~/.vimrc

