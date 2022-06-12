#!/bin/sh
mkdir /home/$USER/Projects
pkexec apt install curl fish steam code geary dconf-editor fonts-jetbrains-mono rpm-ostree gnome-console
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
pkexec deb-get install discord
flatpak install flathub org.gnome.gitlab.somas.Apostrophe io.github.Figma_Linux.figma_linux sh.cider.Cider org.gnome.Music org.gnome.Builder
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install bobthefish