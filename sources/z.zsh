zaw-src-z() {
    type z >/dev/null 2>&1 || return 1

    IFS=$'\n' candidates=( ${(D)$( z | awk '{
        for (i = 2; i <= NF; i++) printf "%s", $i (i == NF ? ORS : OFS)
    }' )} )
    actions=(zaw-callback-cd \
        zaw-callback-append-to-buffer \
        zaw-callback-replace-buffer)
    act_descriptions=('cd into the selected directory' \
        'append to buffer' \
        'replace current line of buffer')
}

zaw-register-src -n 'z' zaw-src-z
