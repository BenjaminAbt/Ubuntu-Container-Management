#!/bin/sh

# Use this script only against a fresh ubuntu server
#    curl https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/ubuntu-install-kubernetes.sh | sudo bash

# disable swap because not supported with kubernetes
swapoff -a

# update package index and install https apt
apt-get update && apt-get install -y apt-transport-https

# add docker gpg key
curl -s https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# add docker to package repositories
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# update package index and install docker
apt update && apt install -qy docker-ce

# add google pgp key
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list

# update index and install k8s tools
apt-get update && apt-get install -y kubeadm kubelet kubectl

# install helm
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get | bash
