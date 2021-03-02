#!/bin/bash

# broot
# https://dystroy.org/broot/install/#alpine-linux

echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -

sudo apt-get update
sudo apt-get -y install broot

# note: this will create a config in ~/.config/broot but I haven't customized it
# so there is no linking to custom config here