docker build -t nginx ./srcs/NGINX/image/
kubectl apply -f ./srcs/NGINX/nginx.yaml
