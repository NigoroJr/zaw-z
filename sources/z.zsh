zaw-src-z() {
    type _z_cmd >/dev/null 2>&1 || return 1

    IFS=$'\n' candidates=( $( _z_cmd | awk '{
        for (i = 2; i <= NF; i++) printf "%s", $i (i == NF ? ORS : OFS)
    }' | sed -e "s#$HOME#~#" ) )
    actions=( \
        zaw-callback-cd \
        zaw-callback-append-to-buffer \
        zaw-callback-replace-buffer \
        zaw-callback-remove-entry \
        )
    act_descriptions=( \
        'cd into the selected directory' \
        'append to buffer' \
        'replace current line of buffer' \
        'remove entry from z database' \
        )
}

zaw-register-src -n 'z' zaw-src-z
