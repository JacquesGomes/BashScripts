#!/bin/bash

# This script sets up Git and does several git clone requests.

mkdir ~/repos

# Install Git
sudo apt-get update
sudo apt-get install git

# Configure Git with user name and email
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
git config --global init.defaultBranch main
git config --global color.ui auto
git config --global pull.rebase false

ssh-keygen -t ed25519 -C <youremail>


#Highlight and copy the output, which starts with ssh-ed25519 and ends with your email address. Copy into the authentication key and click add ssh key
cat ~/.ssh/id_ed25519.pub
echo "Copy the above SSH public key to your GitHub Acc"

# Clone multiple repositories
cd ~/repos
git clone https://github.com/example1.git
git clone https://github.com/example2.git
git clone https://github.com/example3.git

echo "Done!"