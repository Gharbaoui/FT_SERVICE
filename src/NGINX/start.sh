docker build -t nginx ./src/NGINX/image/
kubectl apply -f ./src/NGINX/nginx.yaml
