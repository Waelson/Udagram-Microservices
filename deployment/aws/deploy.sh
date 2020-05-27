#!/bin/bash
echo "___| Applying Secrets and ConfigMap |___"
kubectl apply -f ../k8s/env_secret_local.yaml
kubectl apply -f ../k8s/env_configmap.yaml

echo "___| Applying Frontend |___"
kubectl apply -f ../k8s/frontend-service.yaml
kubectl apply -f ../k8s/frontend-deployment.yaml 

echo "___| Applying Reverse Proxy |___"
kubectl apply -f ../k8s/reverseproxy-service.yaml
kubectl apply -f ../k8s/reverseproxy-deployment.yaml 

echo "___| Applying RestAPI Feed |___"
kubectl apply -f ../k8s/restapi-feed-service.yaml
kubectl apply -f ../k8s/restapi-feed-deployment.yaml 

echo "___| Applying RestAPI User |___"
kubectl apply -f ../k8s/restapi-user-service.yaml
kubectl apply -f ../k8s/restapi-user-deployment.yaml 

echo "___| Rolling out Frontend |___"
kubectl set image deployments/frontend frontend=thedevices/udagram-frontend:latest
kubectl rollout status deployments/frontend

echo "___| Rolling out Reverse Proxy |___"
kubectl set image deployments/reverseproxy reverseproxy=thedevices/udagram-reverseproxy:latest
kubectl rollout status deployments/reverseproxy

echo "___| Applying RestAPI Feed |___"
kubectl set image deployments/restapi-feed restapi-feed=thedevices/udagram-restapi-feed:latest
kubectl rollout status deployments/restapi-feed

echo "___| Applying RestAPI User |___"
kubectl set image deployments/restapi-user restapi-user=thedevices/udagram-restapi-user:latest
kubectl rollout status deployments/restapi-user   

echo "___| *** FINISH *** |___"