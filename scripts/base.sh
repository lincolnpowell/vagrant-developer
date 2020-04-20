#!/bin/bash

# Update and upgrade packages
echo "Updating packages"
sudo apt-get update -qq -y &>/dev/null

echo "Upgrading packages"
sudo apt-get upgrade -qq -y &>/dev/null

# Install Ubuntu Desktop
echo "Installing Ubuntu Desktop"
sudo apt-get install -qq -y --no-install-recommends ubuntu-desktop &>/dev/null

# Install Virtualbox Guest Additions
echo "Installing Virtualbox Guest Additions"
sudo apt-get install -qq -y --no-install-recommends virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 &>/dev/null

# Replace default custom.conf to enable auto login for vagrant user
sudo mv ~/custom.conf /etc/gdm3/
echo "Enabled auto login for vagrant user"

# Change time zone to America/New_York
sudo timedatectl set-timezone America/New_York
echo "Updated time zone to America/New York"

# Change time format to AM/PM
dbus-launch gsettings set org.gnome.desktop.interface clock-format '12h'
echo "Updated time format to AM/PM"

# Disable automatic screen lock
dbus-launch gsettings set org.gnome.desktop.screensaver lock-enabled false
echo "Disabled automatic screen lock"

# Disable power saving mode
dbus-launch gsettings set org.gnome.desktop.session idle-delay 0
echo "Disabled power saving mode"
