<?php
declare(strict_types=1);

$cfg['blowfish_secret'] = 'qtdRoGmbc9{8IZr323xYcSN]0s)r$9b_JUnb{~Xz'; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */

$i = 0;


$i++;
/* Authentication type */
$cfg['Servers'][$i]['auth_type'] = 'cookie';
/* Server parameters */
$cfg['Servers'][$i]['host'] = "mysql-service"; // refrancing mysql service 

$cfg['Servers'][$i]['compress'] = false; 
$cfg['Servers'][$i]['port'] = "8888"; //mysql service port
$cfg['Servers'][$i]['AllowNoPassword'] = false;
