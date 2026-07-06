#
# Get software
#

sudo apt install -y alacritty curl fastfetch flatpak git gh gnome-shell-extension-manager gnome-software-plugin-flatpak htop neovim tmux zip

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#
# Settings
#

# Disable mouse acceleration
gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat

# 24-hour clock
gsettings set org.gnome.desktop.interface clock-format '24h'

# Unpin apps from dock
gsettings set org.gnome.shell favorite-apps "[]"

# Reveal week numbers in the Gnome calendar
gsettings set org.gnome.desktop.calendar show-weekdate true

# Show hidden files in file explorer
gsettings set org.gtk.gtk4.Settings.FileChooser show-hidden true

# Caps as Ctrl
# Pressing both shifts enables caps; one disables it
gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps', 'shift:both_capslock_cancel']"

#
# Hotkeys
#

# Super+T to launch terminal
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Open terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'alacritty'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>t'


# Close windows with Super+Q
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"

# Alt+Tab switches windows instead of apps
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "@as []"

# Super+F to toggle fullscreen
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f']"

# Super+E to launch home folder
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>e']"

# Super+B to launch browser
gsettings set org.gnome.settings-daemon.plugins.media-keys www "['<Super>b']"

# Disable switching input sources
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "@as []"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "@as []"

# Workspaces
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4

for i in {1..9}; do
  gsettings set org.gnome.shell.keybindings switch-to-application-$i "[]"
done

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Super>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Super>4']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Shift><Super>1']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Shift><Super>2']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Shift><Super>3']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Shift><Super>4']"

