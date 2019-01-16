#!/bin/sh
# curl -sS -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/helm-rancher-install.sh | sudo bash -s _address_

ADDRESS="$1"
helm install rancher-latest/rancher --name rancher --namespace cattle-system --set hostname="$ADDRESS" --wait
