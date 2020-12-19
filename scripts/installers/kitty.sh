#!/bin/bash

# kitty

# synaptic packages are out of date (was at v15 last I checked), so we
# install pre-built binaries like this:
# https://sw.kovidgoyal.net/kitty/binary.html
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin launch=n

# Create a symbolic link to add kitty to $PATH (Linux)
[[ -f ${HOME}/.local/kitty.app/bin/kitty ]] && ln -s ${HOME}/.local/kitty.app/bin/kitty ~/.local/bin

# Symlink configuration
# Backup an existing conf if existing
[[ -f ${HOME}/.config/kitty/kitty.conf ]] && mv ${HOME}/.config/kitty/kitty.conf ${HOME}/.config/kitty/kitty.conf.backup
ln -s ../../kitty/kitty.conf ${HOME}/.config/kitty/kitty.conf
