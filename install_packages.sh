#!/bin/bash

# this script takes the package name from user and installs it

read -p "Enter your package name: " package_name

echo "checking if package is already installed..."

if dpkg -s $package_name >/dev/null 2>&1 ; then
	echo "$package_name already installed"
	exit 1
else
	echo "Continuing installation..."
fi

echo "Updating system and Installing: $package_name"
sudo apt-get update
sudo apt install $package_name -y

read -p "Enter the service name:" service_name
sudo systemctl start $service_name
sudo systemctl status $service_name
