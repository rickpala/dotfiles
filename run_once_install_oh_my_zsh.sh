#!/bin/bash

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing ohmyzsh.sh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo ".oh-my-zsh already found. Skipping..."
fi
