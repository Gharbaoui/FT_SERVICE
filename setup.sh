function print_line(){
	color=$2
	echo "${color}=========================== '  $1 ' =====================================${NORM}";
	echo "" ;
}

function replace_ip () # what to replace $2 with what $3 file path
{
	sed -i '' "s/$1/$2/g" $3;
}


# VARIABLES
export YELLOW='\033[1;33m'
export GREEN='\033[0;32m'
export NORM='\033[0m'

# starting MINIKUBE
export MINIKUBE_HOME=~/goinfre/
minikube start --driver=virtualbox
eval $(minikube docker-env)
export MKIP=$(minikube ip)
# MINIKUBE STARTED

# installing metallb
print_line 'instaling metallb' $YELLOW
replace_ip 'MINIKUBE_IP' $MKIP './req/config.yaml'
sh ./req/install.sh
replace_ip $MKIP 'MINIKUBE_IP' './req/config.yaml'
print_line 'metallb instaled' $GREEN
# metallb installed

# installing ftps username is 'mohamed' password '1234'
print_line 'installing FTPS server' $YELLOW
replace_ip 'MINIKUBE_IP' $MKIP './src/FTPS/image/vsftpd.conf'
sh ./src/FTPS/start.sh
replace_ip $MKIP 'MINIKUBE_IP' './src/FTPS/image/vsftpd.conf'
print_line 'FTPS server installed' $GREEN
# ftps installed

# installing phpmyadmin
print_line 'installing PHPMYADMIN' $YELLOW
replace_ip 'MINIKUBE_IP' $MKIP './src/MYSQL/image/wordpress.sql'
sh ./src/MYSQL/start.sh
sh ./src/PHPMYADMIN/start.sh
replace_ip $MKIP 'MINIKUBE_IP' './src/MYSQL/image/wordpress.sql'
print_line 'PHPMYADMIN installed' $GREEN
# phpmyadmin installed

# installing wordpress
print_line 'installing WORDPRESS' $YELLOW
sh ./src/WORDPRESS/start.sh
print_line 'WORDPRESS INSTALLED' $GREEN
# wordpress installed

# installing NGINX 
print_line 'installing NGINX' $YELLOW
replace_ip 'MINIKUBE_IP' $MKIP './src/NGINX/image/default.conf'
sh ./src/NGINX/start.sh
replace_ip 'MINIKUBE_IP' $MKIP './src/NGINX/image/default.conf'
print_line 'NGINX installed' $GREEN
# nginx installed

# installing grafana and influxdb
print_line 'installing grafana' $YELLOW
sh ./src/INFLUXDB/start.sh
sh ./src/GRAFANA/start.sh
print_line 'grafana installed' $GREEN
#grafana installed
