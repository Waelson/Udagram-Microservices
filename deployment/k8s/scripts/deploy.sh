#!/bin/bash
echo "___| Secrets and ConfigMap |___"
kubectl apply -f ../env_secret_local.yaml
kubectl apply -f ../env_configmap.yaml

echo "___| Applying Frontend |___"
kubectl apply -f ../frontend-service.yaml
kubectl apply -f ../frontend-deployment.yaml 

echo "___| Rolling out Frontend |___"
kubectl set image deployments/frontend frontend=thedevices/udagram-frontend:latest
kubectl rollout status deployments/frontend

echo "___| Applying Frontend |___"
kubectl apply -f ../reverseproxy-service.yaml
kubectl apply -f ../reverseproxy-deployment.yaml 

echo "___| Rolling out Reverse Proxy |___"
kubectl set image deployments/reverseproxy reverseproxy=thedevices/udagram-reverseproxy:latest
kubectl rollout status deployments/reverseproxy

#kubectl set image deployments/reverseproxy reverseproxy=thedevices/udagram-reverseproxy:latest
#kubectl rollout status deployments/reverseproxy
#kubectl set image deployments/restapi-feed restapi-feed=thedevices/udagram-restapi-feed:latest
#kubectl rollout status deployments/restapi-feed
#kubectl set image deployments/restapi-user restapi-user=thedevices/udagram-restapi-user:latest
#kubectl rollout status deployments/restapi-user   