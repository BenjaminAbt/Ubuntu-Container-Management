# Ubuntu-Kubernetes

This description works for a fresh ubuntu server installation (tested in 18.04).

Goal is to run a kubernetes cluster on a local ubuntu machine (VM or bare metal) and expose service to external clients.

1) Update system
> curl -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/ubuntu-system-upgrade.sh | sudo bash

2) Install Docker and Kubernetes
> curl -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/ubuntu-install-kubernetes.sh | sudo bash

3) Setup kubernetes
> curl -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/ubuntu-setup-kubernetes.sh | sudo bash

4) Install traefik as ingress
> curl -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/helm-install-traefik.sh | sudo bash

5) Install Rancher as kubernetes manager
> curl -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/helm-install-traefik.sh | sudo bash
