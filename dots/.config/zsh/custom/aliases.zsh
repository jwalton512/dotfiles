# dotfiles
alias df='cd "$DOTFILES"'
alias dfe='cd "$DOTFILES" && ${VISUAL:-${EDITOR:-vim}} .'

# git
alias gs='gst'

# ssh
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '🔑 Public key copied to clipboard.'"
