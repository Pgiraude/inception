#!/bin/bash

service mysql start
#kill $(cat /var/run/mysqld/mysqld.pid)
mysql -u root -e "CREATE USER IF NOT EXISTS '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};"
mysql -u root -e "GRANT ALL PRIVILEGES ON ${SQL_DATABASE}.* TO '${SQL_USER}'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
kill $(cat /var/run/mysqld/mysqld.pid)

