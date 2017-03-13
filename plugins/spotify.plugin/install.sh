#!/bin/bash

sudo add-apt-repository -y "deb http://repository.spotify.com stable non-free"
sudo apt-key -y adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
sudo apt -y update
sudo apt -y install spotify-client
