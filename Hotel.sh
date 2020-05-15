#!/bin/bash
sudo apt install npm
sudo npm install -g npm@next

sudo npm cache clean -f
sudo npm install -g n
sudo n stable

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn
sudo yarn global add @vue/cli
