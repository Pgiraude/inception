#!/bin/bash

if [ -f ./wp-config.php ]
then
    echo "Wordpress already installed."
else
    #cd var/www/wordpress \
	#&& sed -i "s/votre_nom_de_bdd/$SQL_DATABASE/g" wp-config-sample.php \
    #&& sed -i "s/votre_utilisateur_de_bdd/$SQL_USER/g" wp-config-sample.php \
	#&& sed -i "s/votre_mdp_de_bdd/$SQL_PASSWORD/g" wp-config-sample.php \
	#&& sed -i "s/'DB_HOST', ''/'DB_HOST', '$SQL_HOSTNAME'/g" wp-config-sample.php \
	#&& cp wp-config-sample.php wp-config.php
	cd var/www/wordpress \
    && wp config create --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=$SQL_HOSTNAME --dbprefix=wp_ \
    && wp core install --url=https://localhost --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root \
    && wp user create $WP_USER $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PASSWORD --porcelain --allow-root
fi