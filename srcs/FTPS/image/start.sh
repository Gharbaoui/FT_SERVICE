openssl req -x509 -nodes -subj "/C=MA/ST=ST/L=BG/O=D/CN=mohamed.com"  -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt
adduser -D mohamed
echo 'mohamed:1234' | chpasswd
touch /home/mohamed/my-test.txt
service vsftpd start
/telegraf/telegraf &
tail -f /dev/null # this will be deleted
