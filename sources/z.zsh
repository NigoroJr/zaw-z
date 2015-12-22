zaw-src-z() {
    local z_cmd=${_Z_CMD:-z}

    IFS=$'\n' candidates=( $( eval "$z_cmd" | awk '{
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
