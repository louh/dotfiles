![dotfiles](https://github.com/louh/dotfiles/raw/main/dotfiles.png)

this repository should be cloned or symlinked to `~/.dotfiles`. for instance i clone it to where i normally put my repos and then symlink it:

```sh
git clone https://github.com/louh/dotfiles.git ~/Repositories/louh/dotfiles
ln -s ~/Repositories/louh/dotfiles ~/.dotfiles
```

you can copy configuration files into place or symlink the actual configs to the appropriate file or directory inside of `~/.dotfiles`. this way changes to the configuration file also gets reflected in the repository so it can be synced

for example:

```sh
ln -s ~/.dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
```

TODO: install script that auto symlinks to expected locations

some goals
- make it easy to bootstrap a new install of linux
- sync between macos and linux machines

supplementary things
- some things are not in here. like fonts and wallpaper. but are shared between systems nonetheless. for those see the `/Dropbox/System/` directory which is a folder i have but you won't

```sh
ln -s ~/.dotfiles/vimrc ~/.vimrc
```

## progenitors

- logo: [Scott Albrecht](http://scottalbrecht.com/)
