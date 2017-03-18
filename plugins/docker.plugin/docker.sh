#!/bin/bash
sudo apt-get install apt-transport-https ca-certificates
curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -
sudo add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-xenial \
       main"
sudo apt-get update
sudo apt-get -y install docker-engine jq
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker restart
platform=Linux-x86_64
compose_url=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r ".assets[] | select(.name | test(\"${platform}\")) | .browser_download_url")
echo $compose_url
sudo curl -L $compose_url -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
machine_url=$(curl -s https://api.github.com/repos/docker/machine/releases/latest | jq -r ".assets[] | select(.name | test(\"${platform}\")) | .browser_download_url")
sudo curl -L $machine_url >/tmp/docker-machine &&
  sudo chmod +x /tmp/docker-machine &&
  sudo cp /tmp/docker-machine /usr/local/bin/docker-machine
newgrp docker
