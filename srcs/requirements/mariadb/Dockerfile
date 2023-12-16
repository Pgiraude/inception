FROM		debian:buster

RUN			apt update -y && apt upgrade -y
RUN			apt install mariadb-server -y
RUN			apt install vim -y

COPY        conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN         service mysql start;
