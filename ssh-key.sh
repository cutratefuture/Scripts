#!/bin/bash
ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519
cat .ssh/id_ed25519.pub 
