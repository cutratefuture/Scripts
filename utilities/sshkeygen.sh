#ssh keygen script v1.0.2
green="\e[0;92m"
# Prompt User
read -p  "Enter key name:" k

ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/$k 
echo -e "${green}Copy this for VPS!":
cat ~/.ssh/$k.pub
