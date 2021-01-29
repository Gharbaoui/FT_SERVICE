docker build -t grafana ./srcs/GRAFANA/image/
kubectl apply -f ./srcs/GRAFANA/grafana.yaml
