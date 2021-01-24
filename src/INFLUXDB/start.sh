docker build -t influxdb ./src/INFLUXDB/image/
kubectl apply -f ./src/INFLUXDB/influxdb.yaml
