docker build -t phpmyadmin ./src/PHPMYADMIN/image/
kubectl apply -f ./src/PHPMYADMIN/phpmyadmin.yaml
