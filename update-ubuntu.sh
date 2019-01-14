#!/bin/sh

# Use this script only against a fresh ubuntu server

# Update package index
sudo apt update -y

# Upgrade System
sudo apt upgrade -y

# remove origin lxd because it is not compatible
sudo apt-get remove lxd lxd-client -y
