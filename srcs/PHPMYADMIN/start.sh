docker build -t phpmyadmin ./srcs/PHPMYADMIN/image/
kubectl apply -f ./srcs/PHPMYADMIN/phpmyadmin.yaml
