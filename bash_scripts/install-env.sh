#!/bin/bash
echo "Upgrading and updating machine"
sudo apt update -y
apt-get upgrade -y
echo "installing ansible for Ubuntu"
sudo apt install software-properties-common -y 
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
echo "installing pip and paramiko"
sudo apt-get -y install python3-pip
sudo pip3 install paramiko