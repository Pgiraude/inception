FROM		debian:buster

RUN			apt update -y && apt upgrade -y
RUN			apt install nginx -y
RUN			apt install vim -y
RUN			apt install openssl -y

RUN			mkdir etc/nginx/ssl -p

RUN			openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt \
			-keyout /etc/nginx/ssl/inception.key -subj \
			"/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=login.42.fr/UID=login"

RUN			mkdir var/run/nginx -p

RUN			chmod 755 /var/www/html
RUN			chown -R www-data:www-data /var/www/html


COPY		conf/nginx.conf etc/nginx/sites-available/default

EXPOSE		443

CMD			["nginx", "-g", "daemon off;"]

# 					nginx			\
# 					curl			\
# 					vim				\
# 					sudo
# 
# RUN			rm -f /etc/nginx/nginx.conf
# 
# COPY		./config/nginx.conf /etc/nginx/nginx.conf
# COPY		scripts/setup_nginx.sh /setup_nginx.sh
# 
# RUN			chmod -R +x /setup_nginx.sh
# 
# EXPOSE		443
# 
# ENTRYPOINT	["sh", "setup_nginx.sh"]