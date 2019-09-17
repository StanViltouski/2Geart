<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', '2geart' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         's2~8H#50K@Py6kf~35bn)Ru?=QpuLoAItM(lN3Y7;W2vubf+#g`>S$?-)sHeYfD]' );
define( 'SECURE_AUTH_KEY',  'f>9`;_S9S59^L+D|Ms.6#{p|uU<0MGDWm!HzM#)w`V@+`hxY<S!FJI7ZWP00g:}m' );
define( 'LOGGED_IN_KEY',    'oR bCK+0UjDx4r~?zdt|jeiy[dB8kEWO;~ #+6kgOveM,eQ #MgE.yI_C;3T|13!' );
define( 'NONCE_KEY',        ',YejuPqW/i:SS(9/OI53jM)^G]~h-Ow[5;~R_[=/Hu%f:0,XJ+^:v@m=4Lw-*r[%' );
define( 'AUTH_SALT',        '?^gA=|&.oXvml`28*/N#Wao~4p|lZ*HBi#9)I`[*TRHqkvn$=ytr6@gP!+*p7wZT' );
define( 'SECURE_AUTH_SALT', 'BAIl74&&^N/)6!/2*,tv>Fa?kL^#V[%y~?E3%!SJ^v|he1!~zp2]9HqpW!B<MbN`' );
define( 'LOGGED_IN_SALT',   ':cr}e?3%.)=+/7>[:>hZ=QZPY7pBq%zM2#eCy(}G< N+EHACGa.3PWEXr~;r.z A' );
define( 'NONCE_SALT',       '6H7t)7v#UQE^:rjmQHzqcT^mxSymYHw>X>rh/QAA&z]N.br!PGi<UyZ_1CD.cjja' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
