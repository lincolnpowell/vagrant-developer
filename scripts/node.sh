#!/bin/bash

# Install nvm
echo "Installing nvm v.$1"
curl -sS -o- https://raw.githubusercontent.com/nvm-sh/nvm/v${1}/install.sh | bash &> /dev/null
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Install Node
echo "Installing Node v.$2"
{ nvm install $2; nvm use $2; } &>/dev/null

# Install global CLIs
echo "Installing global npm packages"
npm i -g --no-progress --quiet @angular/cli cordova @ionic/cli &>/dev/null
