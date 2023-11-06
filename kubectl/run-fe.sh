kubectl apply -f service-frontend.yaml
kubectl apply -f deployment-frontend.yaml
kubectl expose deployment frontend --type=LoadBalancer --name=publicfrontend