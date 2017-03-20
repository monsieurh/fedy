#!/bin/bash
gpasswd -a $USER input  # Log out and back in to assign this group
apt-get install libinput-tools -y
apt-get install xdotool -y
apt-get install -y ruby
gem install fusuma
