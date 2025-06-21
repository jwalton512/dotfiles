# dotfiles
alias df='cd "$DOTFILES"'
alias dfe='cd "$DOTFILES" && ${VISUAL:-${EDITOR:-vim}} .'

# ssh
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '🔑 Public key copied to clipboard.'"

# sshfs
alias sshfsha="sshfs jason@homeboy:/home/jason/homeautomation_v2/ ~/sshfs/homeautomation"
