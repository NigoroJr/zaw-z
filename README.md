# zaw-z
## Description
[zaw](https://github.com/zsh-users/zaw) source for
[z](https://github.com/knu/z)(the fork version of the
[original](https://github.com/rupa/z) that I use and tested).

## Install
[zplug](https://github.com/b4b4r07/zplug) is recommended. Refer to zplug's
project page for more information on how to install and set it up.

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
