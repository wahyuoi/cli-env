#!/bin/bash

# copy theme 
cp lambda-mod.zsh-theme ~/.oh-my-zsh/themes/

# overide zsh config
if [ ! -f ~/.zshrc ]; then
  mv ~/.zshrc ~/.zshrc.bak
fi
cp .zshrc ~/.zshrc

