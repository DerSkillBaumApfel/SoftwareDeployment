FROM debian:jessie
ARG MYSQL_ROOT_PASSWORD
ARG WORDPRESS_DB_NAME='wordpress'
ARG WORDPRESS_USER_NAME='username'
ARG WORDPRESS_ROOT_PASSWORD
RUN apt update; \
    DEBIAN_FRONTEND=noninteractive apt install -y mysql-server; \
    service mysql start; \
    mysql -e "CREATE DATABASE $WORDPRESS_DB_NAME DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;"; \
    mysql -e "GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"; \
    mysql -e "GRANT ALL ON $WORDPRESS_DB_NAME.* TO '$WORDPRESS_USER_NAME'@'%' IDENTIFIED BY '$WORDPRESS_ROOT_PASSWORD';"; \
    mysql -e "FLUSH PRIVILEGES;"; \
    service mysql stop; \
    sed -i 's/= 127.0.0.1/= 0.0.0.0/' /etc/mysql/my.cnf;
ENTRYPOINT ["/bin/sh"]
CMD ["/usr/bin/mysqld_safe"]
EXPOSE 3306