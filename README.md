# Setup
OS: Debian 13  
Device: Laptop  

## Install from apt
firefox-esr flatpak fastfetch neovim htop curl tmux fzf zip git gh sway swayidle swaylock kanshi i3status brightnessctl wofi mpv xdg-desktop-portal-wlr psmisc power-profiles-daemon network-manager gnome-keyring pipewire-audio wireplumber pipewire-pulse pipewire-alsa  libspa-0.2-bluetooth

## Handle lid suspend
`sudo vi /etc/systemd/logind.conf`  
HandleLidSwitch=suspend  
HandleLidSwitchDocked=ignore

## Commands to run
`flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo`  
`systemctl --user daemon-reload`  
`systemctl --user --now enable wireplumber.service`  
`git config --global init.defaultBranch main`  

## Get network manager working
`sudo vi /etc/network/interfaces`  
Comment out the wifi configured on Debian install. nmcli/nmtui didn't work otherwise.  
  
`sudo vi /etc/NetworkManager/NetworkManager.conf`  
[ifupdown]  
managed=true  

`sudo systemctl restart networking.service`  
`sudo systemctl restart NetworkManager`  

## gnome-keyring setup to unlock ssh key while logged in
`vi ~/.profile`  
Paste to bottom:  
eval $(gnome-keyring-daemon --start)  
export SSH_AUTH_SOCK  
export GNOME_KEYRING_PID  
export GNOME_KEYRING_CONTROL  

## Install dotfiles 
git clone this or something  


## TODO
Some handling for external displays
- `swaymsg output eDP-1 toggle` as a hack for now. 
