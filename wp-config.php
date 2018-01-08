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
define('DB_NAME', 'consult');

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
define('AUTH_KEY',         '#lC>;/oM9=|/ 5#}D`y]eIiT(tbn,[.IZj$6(+`-{j~zTW%{EEz#]eB78Ugz>skU');
define('SECURE_AUTH_KEY',  'h3/^NFXX$DH{KFT)3X5$g-W$HwZ@TEyqCR[&~^n+.T+bjdil@_yzCsq+D1*Ws&v|');
define('LOGGED_IN_KEY',    '*#r>|g}_KUj!M_6]9Bg[*jT<Z*OaCj;J}tsv+.E2DUKF:<S|mKs`Pu@5pi*E Bsv');
define('NONCE_KEY',        'O`WD%9cj14>/`N;Vef5gb)yaiQ1)8^ $PW&ffV1I,YRo{EYFO8~>GUgw*-esdkOd');
define('AUTH_SALT',        '5JscOh,$U}mj&&d`LNoAlVtM&)~@|XL$H-WUk?u$3;M?u7u]?`WFl|mp7Mot0I^U');
define('SECURE_AUTH_SALT', 'kI.Aic]a+*%R|yy>*URBvr&8J1JNRM3CRd]R<B7OdsiNA|[|N5*!~8EkdB{:+=%q');
define('LOGGED_IN_SALT',   '}j>qG<{Y&12eM5QNjn6D-70_1Fy+sScCEYgwU/V:QT1)_=n<pK-si{Xmy=L3}-.J');
define('NONCE_SALT',       'z11JN!JJ2hjrt-AVB`AUj1T#i}4@`^*1 Mla-Ufc;SZ$KXmfeR0e,Xa_aIXu2*yx');

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
