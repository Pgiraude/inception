FROM    debian:buster

RUN     apt update -y && apt upgrade -y
RUN     apt install wget -y

RUN     apt-get install -y php7.3\
		php-fpm\
		php-mysql\
		mariadb-client

COPY    conf/www-php.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN     wget https://fr.wordpress.org/latest-fr_FR.tar.gz -P /var/www
RUN     cd /var/www && tar -xzf latest-fr_FR.tar.gz && rm -f latest-fr_FR.tar.gz
RUN		chown -R root:root /var/www/wordpress
RUN		chown -R www-data:www-data /var/www/wordpress


#RUN     wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#RUN     chmod +x wp-cli.phar
#RUN     mv wp-cli.phar /usr/local/bin/wp

RUN		mkdir -p run/php

#COPY	conf/auto_config.sh auto_config.sh
#RUN		bash auto_config.sh
#RUN		rm -f auto_config.sh

EXPOSE	9000

#RUN		cd var/www/wordpress && cp wp-config-sample.php wp-config.php

CMD ["/usr/sbin/php-fpm7.3", "-F"]

#RUN		/usr/sbin/php-fpm7.3 -R

#ENV         SQL_DATABASE=SQL_DB
#ENV         SQL_USER=Pierre
#ENV         SQL_PASSWORD=1
#ENV         SQL_ROOT_PASSWORD=
#ENV			SQL_HOSTNAME=Pedro
#ENV			WP_TITLE=Inception
#ENV			WP_ADMIN=PEDRITO
#ENV			WP_ADMIN_PASSWORD=123
#ENV			WP_ADMIN_EMAIL=pedrito@gmail.com
#ENV			WP_USER=LOLA
#ENV			WP_USER_PASSWORD=123
#ENV			WP_USER_EMAIL=patate@gmail.com


