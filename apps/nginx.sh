
#!/bin/bash
# install
sudo apt update 
sudo apt install nginx
# add firewall rules
sudo ufw allow 'Nginx HTTP'
sudo ufw status
# check status
sudo systemctl status nginx