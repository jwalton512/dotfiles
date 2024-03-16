setopt auto_cd
setopt extended_glob

# ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

[[ -d /opt/homebrew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"

# load .zstyles file.
[[ -r ${ZDOTDIR:-~}/.zstyles ]] && source ${ZDOTDIR:-~}/.zstyles