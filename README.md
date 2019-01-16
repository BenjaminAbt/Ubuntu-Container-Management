# Ubuntu-Kubernetes

This description works for a fresh ubuntu server installation (tested with 18.04.1 LTS).

Goal is to run a kubernetes cluster on a local ubuntu machine (VM or bare metal) and expose service to external clients.

1) Update system (reboot required)
> curl -sS -H "Cache-Control: no-cache"  https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/ubuntu-system-upgrade.sh | sudo bash

2) Install Docker and Kubernetes (reboot recommended)
> curl -sS -H "Cache-Control: no-cache"  https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/ubuntu-install-kubernetes.sh | sudo bash

3) Setup kubernetes (reboot recommended)
> curl -sS -H "Cache-Control: no-cache"  https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/ubuntu-setup-kubernetes.sh | sudo bash

4) Install Rancher prerequesits
> curl -sS -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/helm-rancher-pre-install.sh | sudo bash -s 1.2.3.4

5) Install Rancher
> curl -sS -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/helm-rancher-install.sh | sudo bash -s _address_
