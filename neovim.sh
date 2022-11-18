#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
  # mac
  brew install neovim
else
  sudo add-apt-repository -y ppa:neovim-ppa/stable
  sudo apt-get update
  sudo apt-get install neovim
fi

mkdir ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
