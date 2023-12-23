#!/bin/bash

if [ -f ./wp-config.php ]
then
    echo "Wordpress already installed."
else
    export SQL_DATABASE=WP_database && \
    export SQL_USER=Pierre && \
    export SQL_PASSWORD=1 && \
    export SQL_ROOT_PASSWORD= && \
    export SQL_HOSTNAME=Pepito && \
    export WP_TITLE=Inception && \
    export WP_ADMIN=PEDRITO && \
    export WP_ADMIN_PASSWORD=123 && \
    export WP_ADMIN_MAIL=a@gmail.com && \
    export WP_USER=LOLA && \
    export WP_USER_MAIL=b@gmail.com && \
    export WP_USER_PASSWORD=123 && \
	cd var/www/wordpress \
    && wp config create --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=$SQL_HOSTNAME --allow-root \
    && wp core install --url=https://localhost --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_MAIL --allow-root \
    && wp user create $WP_USER $WP_USER_MAIL --role=author --user_pass=$WP_USER_PASSWORD --porcelain --allow-root
fi

/usr/sbin/php-fpm7.3 -F -R