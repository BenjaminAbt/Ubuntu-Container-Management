#!/bin/sh
# curl -sS -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/helm-rancher-pre-install.sh | sudo bash

# add ranger helm repository
helm repo add rancher-latest https://releases.rancher.com/server-charts/latest

# add ingress via nginx
helm install stable/nginx-ingress --name ingress-nginx --set rbac.create=true --namespace ingress-nginx --wait

# add cert manager
helm install stable/cert-manager --name cert-manager --namespace kube-system --wait
