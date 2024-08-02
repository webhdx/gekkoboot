#!/bin/sh

ln -s /proc/mounts /etc/mtab

wget https://apt.devkitpro.org/install-devkitpro-pacman
chmod +x ./install-devkitpro-pacman

yes | sudo ./install-devkitpro-pacman

sudo rm ./install-devkitpro-pacman
# yes | dkp-pacman -Scc

sudo dkp-pacman -Syyu --noconfirm gamecube-dev
sudo dkp-pacman -S --needed --noconfirm ppc-portlibs gamecube-portlibs

pip3 install meson ninja

yes | sudo dkp-pacman -Scc
