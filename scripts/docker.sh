#!/bin/bash

# Setup Docker repository
# Reference: https://docs.docker.com/engine/install/ubuntu/
echo "Setting up Docker repository"
{
    sudo apt-get install -qq -y \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common;
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable";
} &>/dev/null


# Install Docker Engine
echo "Installing Docker Engine"
{
    sudo apt-get update -qq;
    sudo apt-get install -qq -y docker-ce docker-ce-cli containerd.io;
} &>/dev/null

# Add non-root vagrant user to docker group
# Reference: https://docs.docker.com/engine/install/linux-postinstall/
echo "Adding non-root vagrant user to docker group"
sudo usermod -aG docker $USER
