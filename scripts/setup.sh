#!/bin/bash

echo "Setting up!"

# TODO: break this up into smaller script chunks like other dotfile installers do

# Font directory setup
FONT_DIRECTORY=${HOME}/.local/share/fonts
# Create ~/.local/share/fonts if not present
[[ ! -d "$FONT_DIRECTORY" ]] && { echo "Creating $FONT_DIRECTORY ..."; mkdir ${FONT_DIRECTORY}; }
# Create and symlink deprecated ~/.fonts to font directory
# NOTE: this ignores if ~/.fonts already exists
[[ ! -d ${HOME}/.fonts ]] && { echo "Symlinking ${HOME}/.fonts to $FONT_DIRECTORY ..."; ln -s ${FONT_DIRECTORY} ${HOME}/.fonts; }
[[ -d "$FONT_DIRECTORY" ]] && echo "Font directory setup complete."

# Install stuff
./install.sh
