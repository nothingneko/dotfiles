#!/bin/sh
mkdir /home/$USER/Projects
pkexec sh -c 'echo -e "[tau]\nname=tauOS 1.1 - Configuration\nbaseurl=http://repo.tauos.co/releases/1.1\nenabled=1\ngpgcheck=0" > /etc/yum.repos.d/tau.repo'
pkexec rpm --import https://packages.microsoft.com/keys/microsoft.asc
pkexec sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
pkexec yum install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
pkexec flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
pkexec yum install fish discord steam code geary dconf-editor jetbrains-mono-fonts-all rpm-ostree gnome-console gnome-builder
flatpak install flathub org.gnome.gitlab.somas.Apostrophe io.github.Figma_Linux.figma_linux sh.cider.Cider org.gnome.Music
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install bobthefish