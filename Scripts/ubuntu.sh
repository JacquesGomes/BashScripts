#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install build-essential curl wget

sudo add-apt-repository ppa:deluge-team/stable
sudo apt-get update
sudo apt-get install deluge

sudo apt-get install shutter

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt-get install google-chrome-stable

sudo apt-get install python3 python3-pip default-jre default-jdk openjdk-11-jre openjdk-11-jdk

sudo snap install code --classic
sudo snap install intellij-idea-community --classic

sudo apt-get install build-essential gdb

sudo snap install spotify

mkdir ~/Desktop/JobDocs
mkdir ~/Desktop/DeliberatePractice
mkdir ~/Desktop/Estudos
mkdir ~/Desktop/Advocacia
mkdir ~/Desktop/UFRN
mkdir ~/Desktop/CS

echo "Remember the lint images extension for Chrome, unhook for YouTube, adblock. Also, remember to put autosave on VS Code and wrap. Remember to install VS Code Code Time, TabNine autocomplete, C/C++ extensions, ESLint, Makefile tools, Prettier, IntelliCode, Code Runner, etc. In near future add npm, maven, make, cmake, database management systems, web servers, and others to this script" > ~/notes.txt

xdg-open ~/notes.txt