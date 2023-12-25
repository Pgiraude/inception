FROM		debian:buster

ENV         SQL_DATABASE=WP_database
ENV         SQL_USER=Pierre
ENV         SQL_PASSWORD=1
ENV         SQL_ROOT_PASSWORD=

RUN			apt update -y && apt upgrade -y
RUN			apt install mariadb-server -y
RUN			apt install vim -y

COPY        conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY        conf/auto_config.sh auto_config.sh
RUN         bash auto_config.sh
RUN         rm -f auto_config.sh

EXPOSE      3306

CMD         ["mysqld_safe"]
