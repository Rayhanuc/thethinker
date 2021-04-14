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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'thethinker' );

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
define( 'AUTH_KEY',         '>^9u5YIgB_[`#qm+eq63ZCc)}MY8%abju;+%>v9B)-.eK.6A&|}l?v_y<PK,Hhwk' );
define( 'SECURE_AUTH_KEY',  'u+F[&j#*}{;7ZuLpCm=3ARqe}UtnbJ]Ca?ml%JF*z#lI8*O:jjY?gXfXuP]i4`r8' );
define( 'LOGGED_IN_KEY',    'UV(EEl4dNp})%^`|I!>;oFuYZ[.Uba5^wJ9S+$5xww,i{(CPO{/iDDPA*, ;t:Y%' );
define( 'NONCE_KEY',        ',HZ;hTOBGt_H-i$SRhmM1*n;rEl|tDWgzcLB0#<[KF&Hqv:dn;XY[yn2e4<ZP=aC' );
define( 'AUTH_SALT',        '417/7<!,8s:8C}g P#R1A!g{^W=zz-#k;yO~((/@nj.w=?>d5*aMNYA 4=a3)%Jp' );
define( 'SECURE_AUTH_SALT', 'H6z9kU]p>8$e>YzwvNfs1%TtV)o93kQ20((DqFN:H{4j@ -ru1zWHi=}uK()%k;=' );
define( 'LOGGED_IN_SALT',   '1%Br^85e*0.}f@Xdm8 Hh+uYS<`YZ4,8cD`9q!<YlMIC|>{ n.@MMs@S{S+W:GEy' );
define( 'NONCE_SALT',       'L$*`4$9{y1vlX5g:9 6!-E_qnF5b(iYX#}imT^lt*M~e3S=HJ6=B}8i{$3.g8?N=' );

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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
