docker build -t wordpress ./src/WORDPRESS/image/
kubectl apply -f ./src/WORDPRESS/wordpress.yaml
