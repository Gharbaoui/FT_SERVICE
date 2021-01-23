# start of functions 
function print_line(){ # first param is name of the service second param is color	
	color=$2
	svc=$1
	echo "${color}================== ${svc} ====================${NORM}"
	echo "";
}

function replace_ip()
{
	sed -i '' "s/$1/$2/g" $3;
}

#end of functions

# start of env variables
192.168.99.159export YELLOW='\033[1;33m'
export GREEN='\033[0;32m'
export NORM='\033[0m'
export MKIP=$(minikube ip)
eval $(minikube docker-env)
#end of  env variables



# installing ftps
print_line 'INSTALLING FTPS server' $YELLOW
replace_ip 'MINIKUBE_IP' $MKIP './src/FTPS/image/vsftpd.conf'
sh ./src/FTPS/start.sh
print_line 'FTPS server installed' $GREEN
replace_ip $MKIP 'MINIKUBE_IP' './src/FTPS/image/vsftpd.conf'
# ftps installed

