keyword=FiraCode
sudo apt-get install -y jq
url=$(curl -s https://api.github.com/repos/tonsky/FiraCode/releases/latest | jq -r ".assets[] | select(.name | test(\"${keyword}\")) | .browser_download_url")
curl -L $url -o /tmp/firacode.zip
unzip /tmp/firacode.zip -d /tmp/firacode
mkdir ~/.fonts
cp /tmp/firacode/otf/* ~/.fonts
