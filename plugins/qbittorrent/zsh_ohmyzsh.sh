sudo apt-get install -y zsh git
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O zsh.sh
sed -i 's/env zsh/#env zsh/g' zsh.sh
bash "zsh.sh"
sudo rm zsh.sh
