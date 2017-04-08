# bibstha's dotfiles

Contains configurations for

* neovim
* tmux

## Shortcuts

Quick reference

```
gap=git add -p
gp=git push
gpd=git push --dry-run
gco=git checkout
gst=git status
gc=git commit -v
```

## Notes

OSX iterm sends Ctrl-h as <BS> instead of ^h. This can be confirmed by opening nvim and in insert mode <c-v><c-h> shows
<BS> instead of ^H.

[Fix](https://github.com/neovim/neovim/issues/2048#issuecomment-78045837)

```bash
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti
```

These commands need to be run inside and outside tmux. Generates xterm-256color.ti (outside tmux) and screen-256color.ti
(inside tmux).
