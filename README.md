# Setup
OS: Debian 13
Device: Laptop

## Install from apt
firefox-esr
flatpak
neovim
htop
curl
tmux
fzf
zip
git
gh
sway
swayidle
swaylock
i3status
brightnessctl
psmisc
power-profiles-daemon
network-manager
wofi
gnome-keyring
pipewire-audio wireplumber pipewire-pulse pipewire-alsa  libspa-0.2-bluetooth
fastfetch

## Change in /etc/systemd/logind.conf
HandleLidSwitch=suspend

## Install dotfiles 
git clone this or something

## Commands to run
`flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo`
`systemctl --user daemon-reload`
`systemctl --user --now enable wireplumber.service`
`git config --global init.defaultBranch main`

## Get network manager working
Comment out the wifi configured on Debian install. nmcli/nmtui didn't work otherwise
`sudo vi /etc/network/interfaces`

Change [ifupdown] managed to true
`sudo vi /etc/NetworkManager/NetworkManager.conf`

`sudo systemctl restart networking.service` 
`sudo systemctl restart NetworkManager`
