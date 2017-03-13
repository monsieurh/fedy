#!/bin/bash

URL="/tmp/skypeforlinux-64-alpha.deb"
FILE="https://go.skype.com/skypeforlinux-64-alpha.deb"
wget -O  ${FILE}
wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

dpkg -i ${FILE}
