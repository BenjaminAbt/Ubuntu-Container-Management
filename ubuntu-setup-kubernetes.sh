#!/bin/sh

# Use this script only against a fresh ubuntu server
#    curl https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/ubuntu-setup-kubernetes | sudo bash

# disable swap
swapoff -a

# init kube admin
kubeadm init

# config kubeadm to use without sudo
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# allow pods on master, otherwise helm tiller and pods will not start
kubectl taint nodes --all node-role.kubernetes.io/master-

# init helm
helm init
