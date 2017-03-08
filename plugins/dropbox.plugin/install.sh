#!/bin/bash

# Author:     Héctor Molinero Fernández <hector@molinero.xyz>
# Repository: https://github.com/zant95/elementary-dropbox
# License:    MIT, https://opensource.org/licenses/MIT

set -eu

# Globals
scriptDir=$(dirname "$(readlink -f "$0")")
cd $scriptDir
# Methods
downloadDropbox(){
	infoMsg 'Downloading Dropbox...'
    echo $(uname -m)
	if [[ $(uname -m) == 'x86_64' ]]; then
		wget "https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb" -O dropbox.deb
	else
		wget "https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_i386.deb" -O dropbox.deb
	fi

	wget "https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb" -O dropbox.deb
    dpkg -i dropbox.deb
}


# Process
. "$scriptDir"/common.sh

infoMsg 'Installing Dropbox...'


downloadDropbox

bash "$scriptDir"/loki_support.sh
sed -i 's/dropbox start -i/env XDG_CURRENT_DESKTOP=Unity QT_STYLE_OVERRIDE='' dropbox start/' /usr/share/applications/dropbox.desktop
rm dropbox.deb
infoMsg 'Installation complete!'
