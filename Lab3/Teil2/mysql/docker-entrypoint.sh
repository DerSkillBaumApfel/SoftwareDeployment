#!/bin/bash


sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/my.cnf;
sed -i 's/key_buffer/key_buffer_size/' /etc/mysql/my.cnf;
#sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/my.cnf
sed -i "s/dbname/$DB_NAME/g" /docker-entrypoint-initdb.d/init.sql
sed -i "s/dbuser/$DB_USER/g" /docker-entrypoint-initdb.d/init.sql
sed -i "s/dbpassword/$DB_PASSWORD/g" /docker-entrypoint-initdb.d/init.sql

mysql -e "CREATE DATABASE $DB_NAME DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;"; \
mysql -e "GRANT ALL ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"; \
mysql -e "FLUSH PRIVILEGES;"; \
service mysql stop

mysqld --init-file="/docker-entrypoint-initdb.d/init.sql"
/etc/init.d/mysql status
