#!/bin/sh

# Use this script only against a fresh ubuntu server
#    curl -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/ubuntu-system-upgrade.sh | sudo bash
# requires a reboot (sudo reboot)

sudo apt update -y
sudo apt upgrade -y
