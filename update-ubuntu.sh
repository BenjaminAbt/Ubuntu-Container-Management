#!/bin/sh

# Use this script only against a fresh ubuntu server
#    curl https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/update-ubuntu.sh | sudo bash

# Update package index
apt update -y

# Upgrade System
apt upgrade -y
