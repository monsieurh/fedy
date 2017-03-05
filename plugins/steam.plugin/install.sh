#!/bin/bash

wget http://media.steampowered.com/client/installer/steam.deb
apt-get install gdebi-core
gdebi steam.deb
rm steam.deb
