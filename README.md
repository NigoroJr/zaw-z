# zaw-z
## Description
[zaw](https://github.com/zsh-users/zaw) source for
[z](https://github.com/rupa/z).

Tested using:
* [rupa/z](https://github.com/rupa/z) (original)
* [knu/z](https://github.com/knu/z) (fork)

## Install
[zplug](https://github.com/b4b4r07/zplug) is recommended. Refer to zplug's
project page for more information on how to install and set up zplug.

```zsh
source ~/.zplug/zplug

# zplug 'rupa/z', \
zplug 'knu/z', \
    of:'z.sh', \
    nice:10

zplug 'zsh-users/zaw' \
    | zplug 'NigoroJr/zaw-z', nice:11

if ! zplug check; then
    zplug install
fi

zplug load
```

## Usage
I use it like:

```zsh
# C-M-z for zaw-z
bindkey "\e^Z" zaw-z
```

Change the `ZAW_Z_CD_CMD` to use a different `cd` command. By default, it uses
`cd`. If you don't want the executed command to be saved in your history, you
can change this variable to ` cd` with a leading space.

## License
MIT License

## Author
Naoki Mizuno
