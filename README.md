#### Cambiar rango de puertos de nodo en minikube
`minikube start --extra-config=apiserver.service-node-port-range=79-61616`

#### Hacer port forwarding 
`kubectl port-forward service/nx-service3 --address 0.0.0.0 8080:80`

`kubectl port-forward service/nx-service3 --address 0.0.0.0 -n <NAMESPACE> <PURTO-HOST>:<PUERTO-SERVICIO>`
