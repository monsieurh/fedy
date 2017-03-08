#!/bin/bash

wget http://media.steampowered.com/client/installer/steam.deb
dpkg -i steam.deb
rm steam.deb
