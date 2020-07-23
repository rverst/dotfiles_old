# dotfiles

These are my dotfiles, the main goal was to easily setup a new machine with a
convenient environment. I liked the idea of [Luke's Smith ricing project](https://larbs.xyz).
But since I use Macs as well as Linux-server and Windows-machines,
I needed something a bit more flexible. On Mac/Linux they are based on [zsh](http://www.zsh.org)
and [neovim](https://neovim.io) in combination with some other awesome tools like
[fzf](https://github.com/junegunn/fzf), [ripgrep](https://github.com/BurntSushi/ripgrep) or
[fd](https://github.com/sharkdp/fd).

## Installation

1)  Clone the repository
```console
> mkdir -p ~/.config/dotfiles
> git clone https://github.com/rverst/dotfiles.git ~/.config/dotfiles
```


2)  Install the dotfiles
```console
> ~/.config/dotfiles/script/bootstrap
```

The dotfiles can be installed in two flavors, `full` and `light`. I use
`full` for my desktops and `light` for headless machines. You can however
install single parts in a different flavor after the main installation.
E.g. `$DOTFILES/nvim/install --full`.

## ToDo

- [x] Basic functionality for Mac and Linux
- [ ] Basic functionality for Windows
- [ ] Updates

## Credits

These dotfiles are mostly inspired by:
- [Luke's LARBS](https://github.com/lukesmithxyz/larbs).
- [caarlos0 dotfiles](https://github.com/caarlos0/dotfiles)
- [r/unixporn](https://www.reddit.com/r/unixporn/)

And probably a lot more...

