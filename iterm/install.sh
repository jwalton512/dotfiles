#!/bin/sh
#
# iTerm configuration

ITERM=$DOTFILES/iterm

for file in $ITERM/color-schemes/*
do
    THEME=$(basename ${file%.*})
    defaults write com.googlecode.iterm2 'Custom Color Presets' \
        -dict-add "$THEME" "$(cat "$file")"
done
