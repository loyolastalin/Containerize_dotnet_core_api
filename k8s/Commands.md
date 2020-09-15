   1 kubectl get nodes
   2 minikube status
   3 kubectl get deployments
   4 kubectl get services
   5 kubectl get pods
   6 kubectl get pods -o wide
   7 kubectl describe service coretest-network
   8 kubectl get deployments coretest-deployment -o yaml
   9 minikube service coretest-network
   10 kubectl describe pods coretest-deployment-79684f895f-6djss
   11 kubectl get deployments
  12 kubectl get services
  13 kubectl get replicaset
  14 kubectl get secrets
  15 kubectl get ingress
  16 minikube docker-env
  17 minikube -p minikube docker-env | Invoke-Expression
  18 minikube service list
  19 minikube service coretest-network --url
  20 minikube service client-node-port --url