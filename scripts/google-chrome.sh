#!/bin/bash

# Install Google Chrome
echo "Installing Google Chrome"
sudo curl -sS -O https://dl.google.com/linux/linux_signing_key.pub
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
{
    sudo apt-key add linux_signing_key.pub;
    sudo apt-get update -qq;
    sudo apt-get install -qq -y google-chrome-stable;
} &>/dev/null
sudo rm linux_signing_key.pub
