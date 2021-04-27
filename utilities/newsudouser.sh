#!/bin/bash
# enter username
read -p 'Enter name for new sudo user:' u
sudo adduser $u
usermod -aG sudo $u