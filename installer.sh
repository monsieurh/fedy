#!/bin/bash

if [[ ! $(whoami) = "root" ]]; then
    echo "Please run the script as root."
    exit 1
fi

echo "Installing updates..."
apt update -y
apt install -y git gjs
apt install -y ppa-purge

echo "Installing elementaryPIT..."
cd /tmp/
git clone https://github.com/monsieurh/elementaryPIT
cd elementaryPIT/
make install
gjs app.js