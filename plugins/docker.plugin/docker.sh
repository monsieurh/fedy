#!/bin/bash
apt-get install apt-transport-https ca-certificates
curl -fsSL https://yum.dockerproject.org/gpg | apt-key add -
add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-xenial \
       main"
apt-get update
apt-get -y install docker-engine jq
groupadd docker
gpasswd -a ${USER} docker
service docker restart
platform=Linux-x86_64
compose_url=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r ".assets[] | select(.name | test(\"${platform}\")) | .browser_download_url")
echo $compose_url
curl -L $compose_url -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
machine_url=$(curl -s https://api.github.com/repos/docker/machine/releases/latest | jq -r ".assets[] | select(.name | test(\"${platform}\")) | .browser_download_url")
curl -L $machine_url >/tmp/docker-machine &&
  chmod +x /tmp/docker-machine &&
  cp /tmp/docker-machine /usr/local/bin/docker-machine
newgrp docker
