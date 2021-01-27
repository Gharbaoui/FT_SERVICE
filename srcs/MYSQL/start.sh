docker build -t mysql ./srcs/MYSQL/image/
kubectl apply -f ./srcs/MYSQL/mysql.yaml
