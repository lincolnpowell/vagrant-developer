#!/bin/bash

# Install VS Code
echo "Installing VS Code"
sudo curl -sS https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
{
    sudo apt-get install -qq apt-transport-https;
    sudo apt-get update -qq;
    sudo apt-get install -qq -y code;
} &>/dev/null
sudo rm packages.microsoft.gpg

# Install VS Code Extensions
code --install-extension ritwickdey.LiveServer
