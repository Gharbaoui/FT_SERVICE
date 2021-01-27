<?php

define( 'DB_NAME', 'wordpress' );

define( 'DB_USER', 'mohamed' );

define( 'DB_PASSWORD', '1234' );

define( 'DB_HOST', 'mysql-service:8888' );

define( 'DB_CHARSET', 'utf8mb4' );

define( 'DB_COLLATE', '' );

define( 'SECURE_AUTH_KEY',  'tw4KgOoQI^GZ|(FG;)}(@|f62oz~SRoA1i&[=2#mdIr2]vS:!+m#UD/vz[nIj[Y]' );
define( 'LOGGED_IN_KEY',    'V^L86uIt;`<nkVpufxt$E(U4PC7yN&oTIL+OVAd&o3.-4[pB}|]~3LLFK(6o#UFY' );
define( 'AUTH_SALT',        '-40]hYEh:%_N!8I#,%kcXu]9s` mH.,MOj:j%K,2vk{@`LONJ}6G}H;voNP=PzHK' );
define( 'SECURE_AUTH_SALT', 'r[26Hb[%p5Ow}BX$r5DRgl}X|t-k_EL#-cz-JL(N43j34H)b&Fn>}RH4]Z>A6Wgv' );
define( 'LOGGED_IN_SALT',   '(eT^ks}d-o)hJ, fUp,?6[V.F92?1v1c B@{&8u]M=%)3Pw9bs#VWAa~Y@TIE,Hb' );
define( 'NONCE_SALT',       'KL$/E|jtc8YW4[t_95C$9g+YV=.R>q5k?dza`lH_gnLS73MGZS$a[RZ:P6VII9Dx' );


$table_prefix = 'wp_';

define( 'WP_DEBUG', false );


if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

require_once( ABSPATH . 'wp-settings.php' );
