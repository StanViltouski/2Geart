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
define( 'AUTH_KEY',         '08UsN_c1FvU v5xWODpr@{5F0^MTw[{BijOW7=qAQOSU^DS-S-i13pvusH1kk=sh' );
define( 'SECURE_AUTH_KEY',  ' dr6~+CxRr}`K/iy{X;j@JHQf}y>623y,|=U:e-ANTt_x!1eyvc=Joc148gH 5{P' );
define( 'LOGGED_IN_KEY',    'JJu|n;ckyZ4#R, #d{!}=+_~/r|;5D{D7[AyiJ;4.#B*LU)%qJZEemsb>c.&}{~7' );
define( 'NONCE_KEY',        't%F7c[[wqY/:}|j<^4YL<(i/-I!XN&h ;q-Ne{w}]1/9=L(On%`^VIw{1QGvRR0Z' );
define( 'AUTH_SALT',        'i_T7:)17%rK<D)mp$&F9JpUO?appjZRn(W4a}vS|3IU}m=foOrw=a9!egSZ;6Cs6' );
define( 'SECURE_AUTH_SALT', 'C_#o{Dc85yzpW-9/%}ad}W) .e+{09q2t42+s`U<j<%t+f?LzyY:4ohpsA$^4Ep`' );
define( 'LOGGED_IN_SALT',   '!0,lm]0GKLpkJ&KCp#A$$o ]&Y(9{epd](yb:3tNws#lB<rSl,Ke@[ w_[dX0+AY' );
define( 'NONCE_SALT',       '*MBPnuy<_!AeU=+;ABV-5}m]1{J=l|17!Mv3RqS^CTn;;kj0hiQZSGuC0KiU!&v9' );

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
