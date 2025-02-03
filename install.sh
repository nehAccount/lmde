#!/bin/bash

#username=$(id -u -n 1000)
builddir=$(pwd)

sudo apt update && sudo apt upgrade -y
sudo apt install nala -y


# ------------------------------------------------------
# copy fonts
# ------------------------------------------------------
sudo cp -a "$builddir"/fonts/* /usr/share/fonts
sudo fc-cache -f -v
fc-cache -f -v

# ------------------------------------------------------
# copy new file templates
# ------------------------------------------------------
mkdir -p "$HOME/Templates"
sudo cp -a "$builddir"/Templates/* "$HOME"/Templates

# icons
sudo tar -xvf "$builddir"/icons/Colloid.tar.xz -C /usr/share/icons

# config
cp -a "$builddir"/config/* "$HOME"/.config

# sudo nala install power-profiles-daemon

echo "Done!"




