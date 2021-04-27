#!/bin/bash
#install certbot for nginx
sudo apt install certbot python3-certbot-nginx -y

# prompt and run
read -p  "Enter domain:" d
sudo certbot --nginx -d $d -d www.$dt