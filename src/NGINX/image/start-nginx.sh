openssl req -x509 -nodes -subj "/C=MA/ST=ST/L=BG/O=D/CN=mohamed.com"  -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt
service nginx start
/telegraf/telegraf &
tail -f dev/null
