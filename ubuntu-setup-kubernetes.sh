#!/bin/sh

# Use this script only against a fresh ubuntu server
#    curl -sS -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/ubuntu-setup-kubernetes | sudo bash

# use weave network
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"

# init kube admin
kubeadm init

# config kubeadm to use without sudo
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# allow pods on master, otherwise helm tiller and pods will not start
kubectl taint nodes --all node-role.kubernetes.io/master-

# re-config helm
kubectl -n kube-system create serviceaccount tiller
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller

# init helm
helm init --service-account tiller
