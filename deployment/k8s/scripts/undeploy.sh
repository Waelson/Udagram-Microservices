#!/bin/bash
echo "___| Deleting Secrets and ConfigMap |___"
kubectl delete -f ../env_secret_local.yaml
kubectl delete -f ../env_configmap.yaml

echo "___| Deleting Frontend |___"
kubectl delete -f ../frontend-service.yaml
kubectl delete -f ../frontend-deployment.yaml 

echo "___| Deleting Reverse Proxy |___"
kubectl delete -f ../reverseproxy-service.yaml
kubectl delete -f ../reverseproxy-deployment.yaml 

echo "___| Deleting Reverse Proxy |___"
kubectl delete -f ../reverseproxy-service.yaml
kubectl delete -f ../reverseproxy-deployment.yaml 

echo "___| Deleting RestAPI Feed |___"
kubectl delete -f ../restapi-feed-service.yaml
kubectl delete -f ../restapi-feed-deployment.yaml 

echo "___| Deleting RestAPI User |___"
kubectl delete -f ../restapi-user-service.yaml
kubectl delete -f ../restapi-user-deployment.yaml 

echo "___| *** FINISH *** |___"