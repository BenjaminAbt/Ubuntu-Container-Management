SERVICETYPE="$1"
EXTERNALIP="$2"
helm install stable/traefik --name traefik --namespace kube-system --set serviceType="$SERVICETYPE",externalIP="$EXTERNALIP"
