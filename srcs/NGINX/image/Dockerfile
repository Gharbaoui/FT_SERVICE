FROM alpine:3.11
RUN apk update
RUN apk add nginx openssl
RUN apk add openrc openssh
RUN mkdir /run/openrc
RUN mkdir /data
COPY index.html /data
COPY start.sh ./
RUN touch /run/openrc/softlevel
RUN rc
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/

RUN mkdir /etc/telegraf
COPY telegraf.conf /etc/telegraf/
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz
RUN tar xf telegraf-1.13.3-static_linux_amd64.tar.gz
RUN rm telegraf-1.13.3-static_linux_amd64.tar.gz
COPY liveness.sh ./
RUN chmod +x telegraf/*
CMD ["sh", "start.sh"]
