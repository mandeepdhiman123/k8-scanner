#!/bin/bash

echo "Installing k8 scanner"

kubectl apply -f kube-scan.yaml
kubectl port-forward --namespace kube-scan svc/kube-scan-ui 8080:80

echo "Installation complete"
