#!/usr/bin/env zsh

if typeset -f zaw-register-src >/dev/null; then
    source $0:A:h/sources/*.zsh
elif type z >/dev/null 2>&1; then
    echo "zaw-z was not loaded because z couldn't be found" >&2
else
    echo "zaw-z was not loaded because zaw wasn't sourced" >&2
fi
