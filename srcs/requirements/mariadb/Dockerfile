FROM		debian:buster

RUN			apt update -y && apt upgrade -y
RUN			apt install mariadb-server -y
RUN			apt install vim -y

COPY        conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY        conf/auto_config.sh auto_config.sh

RUN         chmod +x auto_config.sh
RUN         ./auto_config.sh

#RUN         export SQL_DATABASE=SQL_DataBase \
#            && mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"

#RUN         export SQL_USER=pierre \
#            && export SQL_PASSWORD=123 \
#            && mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"

#RUN         mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
#RUN         mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
#RUN         mysql -e "FLUSH PRIVILEGES;"
#RUN         mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown
#RUN         exec mysqld_safe
