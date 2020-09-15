#!/bin/bash -e
MINIKUBE_IP=127.0.0.1
PORT=8080
kubectl apply -f .\k8s\k8s_deployment.yml    
kubectl apply -f .\k8s\k8s_services.yml     

curl http://{"$MINIKUBE_IP:$PORT/WeatherForecast"}

# Other debugging imperative commands
# 