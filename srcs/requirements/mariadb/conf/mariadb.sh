#!/bin/bash

chown -R mysql /var/lib/mysql
chgrp -R mysql /var/lib/mysql
chmod 755 /var/lib/mysql

service mysql start
echo "CREATE DATABASE IF NOT EXISTS wordpress;" >> file
echo "FLUSH PRIVILEGES;" >> file
echo "GRANT ALL ON *.* TO '$MYSQL_ROOT_USER'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;" >> file
echo "FLUSH PRIVILEGES;" >> file
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" >> file
echo "GRANT ALL ON wordpress.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"  >> file
echo "FLUSH PRIVILEGES;" >> file
mysqld --user=mysql --verbose --bootstrap < file
service mysql stop
# rm file

exec mysqld_safe