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

cat <<EOF > /usr/share/contractor/open-file-as-root.contract
[Contractor Entry]
Name=Open file as root
Icon=scratch-text-editor
Description=Open file as root
MimeType=text
Exec=gksudo scratch-text-editor %U
Gettext-Domain=scratch-text-editor
EOF
