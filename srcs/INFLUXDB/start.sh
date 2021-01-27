docker build -t influxdb ./srcs/INFLUXDB/image/
kubectl apply -f ./srcs/INFLUXDB/influxdb.yaml
