FROM alpine:3.11
RUN apk update
RUN apk add nginx openrc
RUN mkdir /run/openrc
RUN touch /run/openrc/softlevel
RUN rc
COPY default.conf /etc/nginx/conf.d/
RUN apk add php7-common php7-iconv php7-json php7-gd  php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7 php7-fpm php7-zlib php7-dom php7-session php7-mbstring
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip
RUN unzip phpMyAdmin-5.0.4-all-languages.zip
RUN mv phpMyAdmin-5.0.4-all-languages phpmyadmin
RUN rm phpMyAdmin-5.0.4-all-languages.zip
RUN rm phpmyadmin/config.sample.inc.php
COPY config.inc.php ./phpmyadmin/
RUN mkdir /phpmyadmin/tmp
RUN chmod 777 /phpmyadmin/tmp

RUN mkdir /etc/telegraf
COPY telegraf.conf /etc/telegraf/
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz
RUN tar xf telegraf-1.13.3-static_linux_amd64.tar.gz
RUN rm telegraf-1.13.3-static_linux_amd64.tar.gz
RUN chmod +x telegraf/*
COPY start.sh ./
COPY liveness.sh ./
EXPOSE 5000
CMD ["sh", "start.sh"]
