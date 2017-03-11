# zaw-z

## Description

[zaw](https://github.com/zsh-users/zaw) source for
[z](https://github.com/rupa/z). This zaw source lets you jump to
"frecent" directories very quickly. The more recent and/or frequent you visit
a directory the higher it will rank in the list.

![Screenshot](./misc/zaw-z.gif)

Tested using:
* [rupa/z](https://github.com/rupa/z) (original)
* [knu/z](https://github.com/knu/z) (fork)

## Installation

Using [zplug](https://github.com/b4b4r07/zplug) is recommended. Refer to
zplug's project page for more information on how to install and set up zplug.

```zsh
source ~/.zplug/init.zsh

zplug 'zsh-users/zaw'

# zplug 'rupa/z', \
zplug 'knu/z', \
    use:'z.sh', \
    defer:2

zplug 'NigoroJr/zaw-z', \
    defer:3, \
    on:'zsh-users/zaw'

zplug check || zplug install

zplug load
```

## Usage

Put the following in your `.zshrc`.

```zsh
# C-M-z for zaw-z
bindkey "\e^Z" zaw-z
```

Change the `ZAW_Z_CD_CMD` to use a different `cd` command. By default, it uses
`cd`. If you don't want the executed command to be saved in your history, you
can change this variable to ` cd` with a leading space.

## Similar projects

- [b4b4r07/enhancd](https://github.com/b4b4r07/enhancd)

## License

MIT License

## Author

Naoki Mizuno
