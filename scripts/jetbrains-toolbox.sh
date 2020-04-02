#!/bin/bash

# Install JetBrains Toolbox
echo "Installing JetBrains Toolbox v.$1"
sudo mkdir -p /usr/local/src/jetbrains-toolbox && cd "$_"
sudo curl -sS -o jetbrains-toolbox.tar.gz -L "https://download.jetbrains.com/toolbox/jetbrains-toolbox-${1}.tar.gz"
echo "$2 ./jetbrains-toolbox.tar.gz" | sha256sum -c --quiet - || exit 1
sudo tar -xzf ./jetbrains-toolbox.tar.gz &>/dev/null
sudo rm ./jetbrains-toolbox.tar.gz
