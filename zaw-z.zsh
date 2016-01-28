#!/usr/bin/env zsh

ZAW_Z_CD_CMD='cd'

# Just like zaw-callback-execute but with cd
zaw-callback-cd() {
    # Substitute first \~ to ~
    local dest=${${(q)1}/#\\~/\~}
    BUFFER="$ZAW_Z_CD_CMD $dest"
    zle accept-line
}

zaw-callback-remove-entry() {
    local dest=${~1}
    local z_cmd=${_Z_CMD:-z}
    ( cd $dest && eval "$z_cmd -x" >/dev/null )
}

if ! type z >/dev/null 2>&1 && ! [[ $_Z_CMD ]]; then
    echo "zaw-z was not loaded because z couldn't be found" >&2
elif ! typeset -f zaw-register-src >/dev/null; then
    echo "zaw-z was not loaded because zaw wasn't sourced" >&2
else
    source $0:A:h/sources/*.zsh
fi
