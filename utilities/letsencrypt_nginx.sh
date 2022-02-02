#@cutratefuture v0.0.1
#!/bin/bash
#install certbot for nginx
if ! command -v certbot &> /dev/null
then
    sudo apt install certbot python3-certbot-nginx -y
    echo "Certbot not found, installing..."
    exit
fi
# prompt and run
read -p  "Enter domain:" d
sudo certbot --nginx -d $d -d www.$d
