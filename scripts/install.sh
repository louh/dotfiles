#!/bin/bash

# Full package update and upgrade, removing old stuff if necessary
sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install curl
install git
install vim
install wget
install zsh

# Powertools
install albert # todo: skip for mac; link config
install htop
install neofetch

# Apps
# ...e.g. blender

# Run custom installers
for f in installers/*.sh; do bash "$f" -H; done
