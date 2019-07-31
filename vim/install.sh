#!/bin/sh
#
# Vim
#
# This installs dependencies for vim

# Install vim-plug
if test ! -e $HOME/.vim/autoload/plug.vim
then
  echo "  Installing vim-plug for you."

  curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Create backup directories
mkdir -p $HOME/.vim/tmp/{backup,undo}
