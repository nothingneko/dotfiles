#!/bin/sh
mkdir /home/$USER/Documents/Projects
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
yum config-manager --add-repo https://packages.microsoft.com/yumrepos/edge
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo -y
yum up --assumeyes
yum install discord steam code evolution jetbrains-mono-fonts manrope-fonts rpm-ostree --assumeyes
flatpak install flathub org.gnome.gitlab.somas.Apostrophe io.github.Figma_Linux.figma_linux sh.cider.Cider org.gnome.Music org.gnome.Loupe org.gnome.Snapshot -y
yum remove abrt firefox cheese eog --assumeyes
