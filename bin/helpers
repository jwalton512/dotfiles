#!/usr/bin/env zsh

info () {
    printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

user () {
    printf "\r  [ \033[0;33m??\033[0m ] $1\n"
}

success () {
    printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
    printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
    echo ''
}

linkFile() {
    local src=$1 dst=$2
    
    local overwrite= backup= skip= action=

    if [[ -f "$dst" || -d "$dst" || -L "$dst" ]]; then
        if [[ "${overwrite_all:-false}" == "false" && "${backup_all:-false}" == "false" && "${skip_all:-false}" == "false" ]]; then
            local currentSrc="$(readlink $dst)"
            
            if [[ "$currentSrc" == "$src" ]]; then
                skip="true"
            else
                user "File already exists: $dst ($(basename "$src")), what do you want to do?\n\
                [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all?"
                
                read -sk action

                case "$action" in
                o)
                    overwrite=true
                    ;;
                O)
                    overwrite_all=true
                    ;;
                b)
                    backup=true
                    ;;
                B)
                    backup_all=true
                    ;;
                s)
                    skip=true
                    ;;
                S)
                    skip_all=true
                    ;;
                *)
                    ;;
                esac
            fi
        fi

        overwrite=${overwrite:-$overwrite_all}
        backup=${backup:-$backup_all}
        skip=${skip:-$skip_all}

        if [[ "$overwrite" == "true" ]]; then
            rm -rf "$dst"
            success "removed $dst"
        fi

        if [[ "$backup" == "true" ]]; then
            mv "$dst" "${dst}.backup"
            if [[ $? -eq 0 ]]; then
                success "moved $dst to ${dst}.backup"
            else
                fail "moving $dst to ${dst}.backup failed"
            fi
        fi

        if [[ "$skip" == "true" ]]; then
            success "skipped $src"
        fi
    fi

    if [[ "$skip" != "true" ]]; then
        ln -s "$src" "$dst"
        if [[ $? -eq 0 ]]; then
            success "linked $src to $dst"
        else
            fail "linking $src to $dst failed"
        fi
    fi
}