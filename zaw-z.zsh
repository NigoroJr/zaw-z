#!/usr/bin/env zsh

# Space in front to not add to history
ZAW_Z_CD_CMD=' z'

# Just like zaw-callback-execute but with cd
zaw-callback-cd() {
    BUFFER="$ZAW_Z_CD_CMD $1"
    zle accept-line
}

if typeset -f zaw-register-src >/dev/null; then
    source $0:A:h/sources/*.zsh
elif type z >/dev/null 2>&1; then
    echo "zaw-z was not loaded because z couldn't be found" >&2
else
    echo "zaw-z was not loaded because zaw wasn't sourced" >&2
fi
