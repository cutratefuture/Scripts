#!/bin/bash
red="\e[0;91m"
green="\e[0;92m"
uline="\e[4m"
reset="\e[0m"

# Am i Root user?
if [ $(id -u) -eq 0 ]; then
	read -p "Enter username : " username
	read -s -p "Enter password : " password
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username ${red}exists${reset}!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		useradd -m -p "$pass" "$username" 
		usermod -aG sudo $username
		[ $? -eq 0 ] && echo "${green}User has been added to system!${reset}" || echo "${red}Failed to add a user!${reset}"
	fi
else
	echo "${red}Only root may add a user to the system.${reset}"
	exit 2
fi
