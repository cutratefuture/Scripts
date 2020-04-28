#!/bin/bash
echo "update"
sudo apt update && apt upgrade -y

echo "install snap"
sudo apt install snap -y

echo "snap installs"
snap install code --classic 
snap install discord spotify 

echo "apps"
sudo apt install mc gcc make tilda tree npm chromium-browser -y

echo "Trying to remove i3"

sudo apt remove --purge i3*

echo "install i3"

sudo apt-get install i3 compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior

echo "clone my configs"

git clone https://github.com/cutratefuture/eyethreeness.git

echo "cd and copy"
cd  eyethreeness
cp * -rf ~

echo "reboot"
sudo reboot
