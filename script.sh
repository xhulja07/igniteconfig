#!/bin/bash
kubectl delete deploy transe

kubectl delete deploy ignite-cluster

kubectl create -f ignite-deployment.yaml

kubectl scale --replicas=5 -f ignite-deployment.yaml

sleep 7s

kubectl create -f ignite-job.yaml

kubectl get pods
