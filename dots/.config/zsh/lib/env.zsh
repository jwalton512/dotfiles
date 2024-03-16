export EDITOR=${EDITOR:-vim}
export VISUAL=${VISUAL:-vim}
export PAGER=${PAGER:-less}
export LANG=${LANG:-en_US.UTF-8}

#macOS
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER=${BROWSER:-open}

  # Make Apple Terminal behave.
  export SHELL_SESSIONS_DISABLE=${SHELL_SESSIONS_DISABLE:-1}
fi