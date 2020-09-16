# NodePort [Testing purpose - Only DEV]
Exposes a container to the outside through kubeproxy

## high level architecture 
![Cmdline](images/diagrams-dotnetCore_NodePort.png)

## create kubernetees container 
```docker
kubectl apply -f .\k8s\NodePort
```
## expose service outside
![Cmdline](images/minikube_coretest_run.JPG)

## Verify using  Postman

![Cmdline](images/coretest_result_postman.JPG)
