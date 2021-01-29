adduser -D mohamed
echo 'mohamed:1234' | chpasswd
openssl req -x509 -nodes -subj "/C=MA/ST=ST/L=BG/O=D/CN=mohamed.com"  -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt
service nginx start
/telegraf/telegraf &
ssh-keygen /etc/ssh/ssh_host_rsa_key -N '' -t rsa
ssh-keygen /etc/ssh/ssh_host_dsa_key -N '' -t dsa
/etc/init.d/sshd start
tail -f dev/null
