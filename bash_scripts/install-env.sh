#!/bin/bash
# Tested onubuntu 20.04
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Upgrading and updating machine"
  sudo apt update -y
  apt-get upgrade -y
  sudo apt-get -y install python3
  echo "installing ansible for Ubuntu"
  sudo apt install software-properties-common -y 
  sudo add-apt-repository --yes --update ppa:ansible/ansible
  sudo apt install ansible
  echo "installing pip and paramiko"
  sudo apt-get -y install python3-pip
  sudo pip3 install paramiko
  echo "installing PowerShell 7"
  # Install pre-requisite packages.
  sudo apt-get install -y wget apt-transport-https software-properties-common
  # Download the Microsoft repository GPG keys
  wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
  # Register the Microsoft repository GPG keys
  sudo dpkg -i packages-microsoft-prod.deb
  # Update the list of products
  sudo apt-get update
  # Enable the "universe" repositories
  sudo add-apt-repository universe
  # Install PowerShell
  sudo apt-get install -y powershell
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
elif [[ "$OSTYPE" == "cygwin" ]]; then
        # POSIX compatibility layer and Linux environment emulation for Windows
elif [[ "$OSTYPE" == "msys" ]]; then
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
elif [[ "$OSTYPE" == "win32" ]]; then
        # I'm not sure this can happen.
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        # ...
else
        # Unknown.
fi
