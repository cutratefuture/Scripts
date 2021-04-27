#!/bin/bash
# certbot revoke script
# RUN AT YOUR OWN RISK! - untested as of 4/26
# switch to root to output the contents of dir
echo "list of SSL certs installed:"
sudo ls -la /etc/letsencrypt/archive/
read -p 'Enter domain for SSL revoke' domain
#cat pem files in dir
echo "typically the fullchain.pem file will fully revoke the SSL and delete the entry"
echo "fullchain1.pem or fullchain3.pem will be enough"
sudo ls -la /etc/letsencrypt/archive/$domain/
read -p 'Enter pem filename' fullchain
# revoke
certbot revoke --cert-path /etc/letsencrypt/archive/$domain/$fullchain.pem