zaw-src-z() {
    type z >/dev/null 2>&1 || return 1

    candidates=( $( z | awk '{ print $2 }' | sed -e "s#$HOME#~#" ) )
    actions=(zaw-callback-append-to-buffer \
        zaw-callback-replace-buffer)
    act_descriptions=('append to buffer' \
        'replace current line of buffer')
}

zaw-register-src -n 'z' zaw-src-z
