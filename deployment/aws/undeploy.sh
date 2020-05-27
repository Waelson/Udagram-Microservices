#!/bin/bash
echo "___| Deleting Secrets and ConfigMap |___"
kubectl delete -f ../k8s/env_secret_local.yaml
kubectl delete -f ../k8s/env_configmap.yaml

echo "___| Deleting Frontend |___"
kubectl delete -f ../k8s/frontend-service.yaml
kubectl delete -f ../k8s/frontend-deployment.yaml 

echo "___| Deleting Reverse Proxy |___"
kubectl delete -f ../k8s/reverseproxy-service.yaml
kubectl delete -f ../k8s/reverseproxy-deployment.yaml 

echo "___| Deleting RestAPI Feed |___"
kubectl delete -f ../k8s/restapi-feed-service.yaml
kubectl delete -f ../k8s/restapi-feed-deployment.yaml 

echo "___| Deleting RestAPI User |___"
kubectl delete -f ../k8s/restapi-user-service.yaml
kubectl delete -f ../k8s/restapi-user-deployment.yaml 

echo "___| *** FINISH *** |___"