#!/bin/bash
# set -x

# # echo "CREATE DATABASE IF NOT EXISTS '$MYSQL_DATABASE';" >> file
# # echo "FLUSH PRIVILEGES;" >> file
# # echo "GRANT ALL ON *.* TO '$MYSQL_ROOT_USER'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;" >> file
# # echo "FLUSH PRIVILEGES;" >> file
# # echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" >> file
# # echo "GRANT ALL ON wordpress.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"  >> file
# # echo "FLUSH PRIVILEGES;" >> file
# #!/bin/bash

# # FILE=/var/lib/mysql/.db_create
# # if  [ ! -f "$FILE" ]
# # then
# # 	echo "Je creer la BDD"
# # 	envsubst < /var/init.sql > /var/init_env.sql
# 	service mysql start
# # 	mysql -D mysql < /var/init_env.sql | true
# # 	touch /var/lib/mysql/.db_create
# # 	service mysql stop | echo -n ""
# # fi
# # echo "BDD deja creer"
# # exec mysqld_safe

# # mysqld --user=mysql --verbose --bootstrap < file

# # rm file
service mysql start

# # mysqld_safe
