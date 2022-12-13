#!/bin/bash

# vim
cp .vimrc ~/.vimrc

# nvim
mkdir -p .config/nvim/ 
cp nvim/ ~/.config/nvim

# tmux
cp .tmux.conf ~/.tmux.conf

# Useful git shortcuts
git config --global alias.co checkout
git config --global alias.s status
git config --global alias.p pull
git config --global alias.pwf push --force-with-lease
