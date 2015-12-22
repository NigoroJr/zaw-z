#!/usr/bin/env zsh

# Space in front to not add to history
ZAW_Z_CD_CMD=' z'

# Just like zaw-callback-execute but with cd
zaw-callback-cd() {
    local dest=${~1}
    BUFFER="$ZAW_Z_CD_CMD $1"
    zle accept-line
}

zaw-callback-remove-entry() {
    local dest=${~1}
    _z_cmd --delete $dest
}

if typeset -f zaw-register-src >/dev/null; then
    source $0:A:h/sources/*.zsh
elif type _z_cmd >/dev/null 2>&1; then
    echo "zaw-z was not loaded because z couldn't be found" >&2
else
    echo "zaw-z was not loaded because zaw wasn't sourced" >&2
fi
