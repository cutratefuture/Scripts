#!/bin/bash
#install certbot for apache
sudo apt install certbot python3-certbot-apache -y

# prompt and run
read -p  "Enter domain:" d
sudo certbot --apache -d $d -d www.$d