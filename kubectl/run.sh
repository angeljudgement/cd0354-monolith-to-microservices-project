kubectl apply -f aws-secret.yaml
# kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml

kubectl apply -f deployment-backend-api-feed.yaml
kubectl apply -f service-backend-api-feed.yaml

kubectl apply -f deployment-backend-api-user.yaml
kubectl apply -f service-backend-api-user.yaml

kubectl apply -f deployment-reverseproxy.yaml
kubectl apply -f service-reverseproxy.yaml


kubectl expose deployment reverseproxy --type=LoadBalancer --name=publicreverseproxy

source check.sh