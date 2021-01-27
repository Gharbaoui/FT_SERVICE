FROM alpine:3.11
RUN apk update
RUN apk add vsftpd openssl openrc
RUN mkdir /run/openrc
RUN touch /run/openrc/softlevel
RUN rc
RUN rm /etc/vsftpd/vsftpd.conf
COPY vsftpd.conf /etc/vsftpd/
# installing telegraph
# TELEGRAPH END
RUN mkdir /etc/telegraf
COPY telegraf.conf /etc/telegraf/
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz
RUN tar xf telegraf-1.13.3-static_linux_amd64.tar.gz
RUN rm telegraf-1.13.3-static_linux_amd64.tar.gz
RUN chmod +x telegraf/*
COPY liveness.sh ./
COPY start.sh ./
EXPOSE 21 30020-30021
CMD ["sh", "./start.sh"]
