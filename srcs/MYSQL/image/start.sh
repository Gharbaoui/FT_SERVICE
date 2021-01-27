/etc/init.d/mariadb setup
service mariadb start
mysql -e "CREATE USER 'mohamed'@'%' IDENTIFIED BY '1234';"
mysql -e "CREATE DATABASE wordpress;"
mysql < ./wordpress.sql -u root wordpress; 
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'mohamed'@'%';"
mysql -e "FLUSH PRIVILEGES"
mysql -e "./mohamed_db.sql -u mohamed"
service mariadb restart
/telegraf/telegraf &
tail -f /dev/null
