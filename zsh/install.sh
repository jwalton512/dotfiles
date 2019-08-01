#!/bin/sh
#
# zsh

# change shell to zsh
if ! grep -qxF $(which zsh) /etc/shells
then
    echo "  Adding $(which zsh) to /etc/shells"
    echo "$(which zsh)" | sudo tee -a /etc/shells
fi

chsh -s $(which zsh)
