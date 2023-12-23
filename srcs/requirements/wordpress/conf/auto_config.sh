#!/bin/bash

if [ -f ./wp-config.php ]
then
    echo "Wordpress already installed."
else
	cd var/www/wordpress \
    && wp config create --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=$SQL_HOSTNAME --allow-root \
    && wp core install --url=https://localhost --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root \
    && wp user create $WP_USER $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PASSWORD --porcelain --allow-root
fi

/usr/sbin/php-fpm7.3 -F -R