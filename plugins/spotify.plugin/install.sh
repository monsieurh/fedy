#!/bin/bash
add-apt-repository -y "deb http://repository.spotify.com stable non-free"
apt-key -y adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
apt -y update
apt -y install spotify-client
