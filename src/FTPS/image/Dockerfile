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
COPY start-ftps-telegraph.sh ./
EXPOSE 21 30020-30021
CMD ["sh", "./start-ftps-telegraph.sh"]
