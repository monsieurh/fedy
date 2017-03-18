#!/bin/bash

if [[ ! $(whoami) = "root" ]]; then
    echo "Please run the script as root."
    exit 1
fi

echo "Installing updates..."
apt update -y
apt install -y git gjs


echo "Installing elementaryPIT..."
cd /tmp/
git clone https://github.com/monsieurh/elementaryPIT
cd elementaryPIT/
make uninstall
