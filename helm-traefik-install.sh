#!/bin/sh
# curl -sS -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/helm-traefik-install.sh | sudo bash -s NodePort 1.2.3.4

SERVICETYPE="$1"
EXTERNALIP="$2"
helm install stable/traefik --name traefik --namespace kube-system --set serviceType="$SERVICETYPE",externalIP="$EXTERNALIP"
