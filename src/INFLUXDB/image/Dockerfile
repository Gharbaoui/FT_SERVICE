FROM alpine:3.11
RUN apk update
RUN apk add openrc influxdb
RUN mkdir /run/openrc
RUN touch /run/openrc/softlevel
RUN rc
RUN mkdir /etc/telegraf
COPY telegraf.conf /etc/telegraf/
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz
RUN tar xf telegraf-1.13.3-static_linux_amd64.tar.gz
RUN rm telegraf-1.13.3-static_linux_amd64.tar.gz
RUN chmod +x telegraf/*
COPY start-influxdb.sh ./
CMD ["sh" , "start-influxdb.sh"]
