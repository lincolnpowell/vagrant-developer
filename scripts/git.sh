#!/bin/bash

if [ -f ~/.ssh/id_rsa ]; then
    echo "Adding SSH key to ssh-agent";
    { eval "$(ssh-agent -s)"; ssh-add ~/.ssh/id_rsa; } &>/dev/null
fi
