# zaw-z
## Description
[zaw](https://github.com/zsh-users/zaw) source for
[z](https://github.com/knu/z) (the fork of
[rupa/z](https://github.com/rupa/z)). I use and have tested using the forked
version, but it should work with the original version, too.

## Install
[zplug](https://github.com/b4b4r07/zplug) is recommended. Refer to zplug's
project page for more information on how to install and set up zplug.

```zsh
source ~/.zplug/zplug

zplug 'zsh-users/zaw', \
    | zplug 'NigoroJr/zaw-z'

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
` z` with a leading space so that it doesn't pollute the history.

## License
MIT License

## Author
Naoki Mizuno
