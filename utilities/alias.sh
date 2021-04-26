#alias v1.0.0
#colors
green="\e[0;92m"
uline="\e[4m"
reset="\e[0m"

#user input
echo -e "${green}${uline}Hello! please enter the following${reset}"
read -p 'Enter alias name:' a
read -p 'Enter command:' c

#make new line in .bashrc
echo >> ~/.bashrc
#add comment
echo '#alias created from script' >> ~/.bashrc
# appends alias to end of file
echo alias $a=\'$c\' >> ~/.bashrc
#success message
echo 'alias entered'
# tail end of bashrc to confirm
tail ~/.bashrc
#loads new bashrc
source ~/.bashrc
