#!/bin/bash

apt install -y gksu

cat <<EOF > /usr/share/contractor/open-folder-as-root.contract
[Contractor Entry]
Name=Open folder as root
Icon=pantheon-files
Description=Open current folder as root 
MimeType=inode;
Exec=gksudo pantheon-files %U
Gettext-Domain=pantheon-files
EOF

[ -f /usr/share/contractor/open-folder-as-root.contract ] && echo "'Open as root' is installed." || echo "'Open as root' is not installed. I don't really know what happened there."


