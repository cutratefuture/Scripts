#!/bin/bash
echo "update"
sudo apt update && sudo apt upgrade -y

echo "install snap"
sudo apt install snap -y

echo "snap installs"
snap install cool-retro-term  code --classic
snap install discord spotify

echo "apps"
sudo apt install mc tilda tree npm neofetch chromium-browser -y

echo "node"
sudo npm cache clean -f
sudo npm install -g n
sudo n latest

echo "yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install yarn -y


echo "Trying to remove i3"
sudo apt remove --purge i3*

echo "install i3"
sudo apt-get install i3 compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior

echo "clone my configs"
git clone https://github.com/cutratefuture/eyethreeness.git

echo "cd and copy"
cd  eyethreeness
cp * -rf ~/.config/
rm eyethreeness/ -rf

echo "reboot"
sudo reboot
