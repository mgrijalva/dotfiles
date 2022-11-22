#!/bin/bash

sh -c "$(curl -fsLS get.chezmoi.io)"

variables=( email )
echo 'Making sure these variables are set:'
echo $variables
for i in "${variables[@]}"; do
  ./bin/chezmoi data | grep $i
  if [ $? == 1 ]; then
    echo "Variable $i is not set in .chezmoidata.yaml!"
    exit 1
  fi
done

./bin/chezmoi init --apply --verbose https://github.com/mgrijalva/dotfiles.git
