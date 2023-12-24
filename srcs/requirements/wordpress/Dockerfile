FROM    debian:buster

RUN     apt update -y && apt upgrade -y
RUN     apt install wget -y

RUN     apt-get install -y php7.3\
		php-fpm\
		php-mysql\
		mariadb-client

RUN     wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN     cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
RUN		chown -R root:root /var/www/wordpress

COPY    conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN     wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN     chmod +x wp-cli.phar
RUN     mv wp-cli.phar /usr/local/bin/wp

RUN		mkdir -p run/php

COPY	conf/auto_config.sh auto_config.sh
#RUN		chmod +x auto_config.sh

EXPOSE	9000

#ENV         SQL_DATABASE=WP_database
#ENV         SQL_USER=Pierre
#ENV         SQL_PASSWORD=123
#ENV         SQL_ROOT_PASSWORD=
#ENV			SQL_HOSTNAME=Pedro
#ENV			WP_TITLE=Inception
#ENV			WP_ADMIN=PEDRITO
#ENV			WP_ADMIN_PASSWORD=123
#ENV			WP_ADMIN_EMAIL=pedrito@gmail.com
#ENV			WP_USER=LOLA
#ENV			WP_USER_PASSWORD=123
#ENV			WP_USER_EMAIL=patate@gmail.com

#RUN			/usr/sbin/php-fpm7.3 -F -R

#ENTRYPOINT	["bash", "auto_config.sh"]

