FROM alpine:3.11
RUN apk update
RUN apk add libc6-compat
RUN wget https://dl.grafana.com/oss/release/grafana-7.3.7.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.3.7.linux-amd64.tar.gz
RUN mv grafana-7.3.7 grafana
COPY  grafana.db ./grafana/data/
RUN mkdir /etc/telegraf
COPY telegraf.conf /etc/telegraf/
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz
RUN tar xf telegraf-1.13.3-static_linux_amd64.tar.gz
RUN rm telegraf-1.13.3-static_linux_amd64.tar.gz
RUN chmod +x telegraf/*
COPY liveness.sh ./
COPY ./start.sh ./
CMD ["sh", "./start.sh"]
