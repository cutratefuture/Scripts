#!/usr/bin/env bash
#this will install apache, mysql, and php on your system. 
#at the end of the script the mysql_secure_installation script will run
sudo apt update
sudo apt install apache2 -y

#firewall
sudo ufw app list
sudo ufw allow in "Apache Full"
sudo ufw status

#install mysql
sudo apt install mysql-server -y

#install php
sudo apt install php libapache2-mod-php php-mysql -y

#finish mysql instaltion
sudo mysql_secure_installation