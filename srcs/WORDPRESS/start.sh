docker build -t wordpress ./srcs/WORDPRESS/image/
kubectl apply -f ./srcs/WORDPRESS/wordpress.yaml
