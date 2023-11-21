#!/usr/bin/pwsh
kubectl create namespace devops-tools
kubectl create -f kubernetes-jenkins/volume.yaml

kubectl apply -f kubernetes-jenkins/serviceAccount.yaml
kubectl apply -f kubernetes-jenkins/deployment.yaml
kubectl apply -f kubernetes-jenkins/service.yaml
minikube service jenkins-service --namespace=devops-tools