#!/bin/bash
set -e
# trap cleanup 

echo "Symlinking..."

backup_file() {
  set +e
  backup="$1_BACKUP"
  echo "Making back up of $1 into $backup"
  mv "$1" "$backup"
  set -e
}

# VIM
backup_file ~/.vimrc
ln -sv "$(pwd)/vim/.vimrc" ~/.vimrc

# TMUX
backup_file ~/.tmux.conf
ln -sv "$(pwd)/.tmux.conf" ~/.tmux.conf

echo "Done!"
