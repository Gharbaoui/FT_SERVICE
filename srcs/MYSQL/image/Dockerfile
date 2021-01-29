FROM alpine:3.11
RUN apk update
RUN apk add openrc mariadb mariadb-common mariadb-client
RUN rc-update
RUN mkdir /run/openrc
RUN touch /run/openrc/softlevel
RUN rc
RUN rm /etc/my.cnf.d/mariadb-server.cnf
COPY mariadb-server.cnf /etc/my.cnf.d/
COPY wordpress.sql ./
RUN mkdir /etc/telegraf
COPY telegraf.conf /etc/telegraf/
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz
RUN tar xf telegraf-1.13.3-static_linux_amd64.tar.gz
RUN rm telegraf-1.13.3-static_linux_amd64.tar.gz
RUN chmod +x telegraf/* 
COPY liveness.sh ./
COPY start.sh ./
CMD ["sh", "./start.sh"]
