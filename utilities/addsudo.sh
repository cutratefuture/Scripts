#!/bin/bash
read -p "Enter username : " username
adduser -m  "$username" 
usermod -aG sudo $username
