FROM		debian:buster

RUN			apt update -y && apt upgrade -y
RUN			apt install nginx -y
RUN			apt install vim -y
RUN			apt install openssl -y

RUN			mkdir etc/nginx/ssl -p

RUN			openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt \
			-keyout /etc/nginx/ssl/inception.key -subj \
			"/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=pgiraude.42.fr/UID=pgiraude"

RUN			mkdir var/run/nginx -p

RUN			chmod 755 /var/www/html
RUN			chown -R www-data:www-data /var/www/html

COPY		conf/nginx.conf etc/nginx/sites-available/default

EXPOSE		443

CMD		["nginx", "-g", "daemon off;"]