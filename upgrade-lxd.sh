#!/bin/sh

# Use this script only against a fresh ubuntu server
#    curl https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/upgrade-lxd.sh | sudo bash

# remove origin lxd because it is not compatible
apt-get remove lxd lxd-client -y

# install lxd via snap
snap install lxd

# init lxd to use containers
lxd init --auto --storage-backend=dir
lxc network create lxdbr0  ipv6.address=none ipv4.address=auto ipv4.nat=true
lxc network attach-profile lxdbr0 default eth0
