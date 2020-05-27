#!/bin/bash
eksctl create cluster --name my-cluster --region us-west-2 --nodegroup-name my-workers --node-type t3.medium --nodes 3 --nodes-min 1 --nodes-max 4 --managed