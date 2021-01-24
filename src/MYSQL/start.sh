docker build -t mysql ./src/MYSQL/image/
kubectl apply -f ./src/MYSQL/mysql.yaml
