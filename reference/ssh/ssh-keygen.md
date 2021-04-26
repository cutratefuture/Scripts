
$ mkdir -p $HOME/.ssh
$ chmod 0700 $HOME/.ssh

$ ssh-keygen -t ed25519 -C "My key for Linux server # 42"

How to install the public key in Ubuntu 18.04 remote server
The syntax is as follows:

ssh-copy-id your-user-name@your-ubuntu-server-name
ssh-copy-id -i ~/.ssh/file.pub your-user-name@your-ubuntu-server-name

For example:
## for RSA KEY ##
ssh-copy-id -i $HOME/.ssh/id_rsa.pub user@202.54.1.55
## for ED25519 KEY ##
ssh-copy-id -i $HOME/.ssh/id_ed25519.pub user@202.54.1.55
## install SSH KEY for root user ##
ssh-copy-id -i $HOME/.ssh/id_ed25519.pub root@202.54.1.55

I am going to install ssh key for a user named vivek (type command on your laptop/desktop where you generated RSA/ed25519 keys):
$ ssh-copy-id -i ~/.ssh/id_ed25519.pub vivek@202.54.1.55


RWE
ssh cap@192.168.1.129 -i $HOME/.ssh/lol
