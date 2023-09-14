#!/bin/bash

set -x

echo "CREATE DATABASE IF NOT EXISTS '$MYSQL_DATABASE';" >> file
echo "FLUSH PRIVILEGES;" >> file
echo "GRANT ALL ON *.* TO '$MYSQL_ROOT_USER'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;" >> file
echo "FLUSH PRIVILEGES;" >> file
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" >> file
echo "GRANT ALL ON '$MYSQL_DATABASE'.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"  >> file
echo "FLUSH PRIVILEGES;" >> file

mysqld --user=mysql --verbose --bootstrap < file

rm file

exec mysqld_safe
