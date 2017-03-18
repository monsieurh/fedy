#!/bin/bash
sudo gpasswd -a $USER input  # Log out and back in to assign this group
sudo apt-get install libinput-tools -y
sudo apt-get install xdotool -y
sudo apt-get install -y ruby
sudo gem install fusuma
