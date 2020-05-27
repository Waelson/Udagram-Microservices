#!/bin/bash
echo '***************************'
echo ' Send image to Docker Hub'
echo '***************************'
read -p 'User: ' user && \
read -p 'Password: ' passwd

echo $passwd | docker login --username $user --password-stdin && \
docker-compose -f ../docker-compose-build.yaml push
#echo '*** Pushing Frontend ***' && \
#docker push thedevices/udagram-frontend:latest && \
#echo '*** Pushing Restapi-Feed ***' && \
#docker push thedevices/udagram-restapi-feed:latest 
#echo '*** Pushing Restapi-User ***' && \
#docker push thedevices/udagram-restapi-user:latest 
#echo '*** Pushing Reverse Proxy ***' && \
#docker push thedevices/reverseproxy:latest && \
echo '*** Finish ***'