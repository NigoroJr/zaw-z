#!/usr/bin/env zsh

# Just like zaw-callback-execute but with cd
zaw-callback-cd() {
    local dest=${~1}
    BUFFER="cd '$dest'"
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
