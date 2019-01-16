#!/bin/sh
# curl -sS -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/helm-install-rancher.sh | sudo bash

# add ranger helm repository
helm repo add rancher-latest https://releases.rancher.com/server-charts/latest
