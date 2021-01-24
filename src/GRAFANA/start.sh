docker build -t grafana ./src/GRAFANA/image/
kubectl apply -f ./src/GRAFANA/grafana.yaml
