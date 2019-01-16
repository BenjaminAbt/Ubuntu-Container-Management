#!/bin/sh
# curl -sS -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/helm-traefik-install.sh | sudo bash

SERVICETYPE="$1"
EXTERNALIP="$2"
helm install stable/traefik --name traefik --namespace kube-system --set serviceType="$SERVICETYPE",externalIP="$EXTERNALIP"
