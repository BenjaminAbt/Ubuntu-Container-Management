#!/bin/sh
# curl -sS -H "Cache-Control: no-cache" https://raw.githubusercontent.com/BenjaminAbt/Ubuntu-Kubernetes/master/ubuntu-install-hostess.sh | sudo bash

git clone https://github.com/cbednarski/hostess
cd hostess
make
make install
