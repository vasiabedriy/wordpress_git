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
define('DB_NAME', 'test');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '}*z6,^1X*h_#XQoR<8 W}H#kQ.6CV} B1/IdSpyw5(/Wbpm8aoO @*mYlzG7bB?_');
define('SECURE_AUTH_KEY',  'G&Qv7bk2(*z/.7d,[VAaI` ]y~al>5Zy&cUxsD QPCMiix;YEC[L(gy.r&QZPIVV');
define('LOGGED_IN_KEY',    'dszn=:Quz=8NR|7r1{]J1Ca$on0j{+R-Ly(EZ/6-C;A})H:(nz4):z_BQ-4+ajc0');
define('NONCE_KEY',        '*dEUE%@M0RF&6dhzfjMrGWm~]DW:FjKELRs?m:M]0|Z{H%fH|H]m3x_zPkAKM!|y');
define('AUTH_SALT',        ':4R=vp1s8Kp-wj<K37^bHm`eTK[p=1CJl,@C{M57erc}[td~mK90(R(i5i)g@26q');
define('SECURE_AUTH_SALT', '$s!d``f~}EyMa0+Dt>42|rJNw*McN;I|F2v^)?ZD)ZL!A8*][;6sH`^Mye3LHa2q');
define('LOGGED_IN_SALT',   'n8.%zFb-EQwR;,*#OvtMlcR*O?`/mGN*r)`0X(E48U}xv1r&C/1 M!m6UP-;C~OW');
define('NONCE_SALT',       '%+2}P1S.t|)eq..(_|cVqGDdE9w]%-4pjI%tA3~wpGG)d3Msg(0k/MqZ1V-tFAJp');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
