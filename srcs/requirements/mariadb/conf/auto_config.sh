#!/bin/bash

export SQL_DATABASE=WP_database && \
export SQL_USER=Pierre && \
export SQL_PASSWORD=1 && \
export SQL_ROOT_PASSWORD=

service mysql start
sleep 5
mysql -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};"
mysql -e "CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD' ;"
mysql -e "GRANT ALL PRIVILEGES ON $SQL_DATABASE.* TO '$SQL_USER'@'%' ;"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$SQL_ROOT_PASSWORD' ;"
mysql -e "FLUSH PRIVILEGES;"
