#!/bin/sh
#
# ZSH
#
# This installs our ZSH environment (using oh-my-zsh)

# Check for oh-my-zsh
if test ! -d "$HOME/.oh-my-zsh"
then
  echo "  Installing oh-my-zsh for you."

  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
