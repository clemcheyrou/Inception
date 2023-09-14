#!/bin/bash

if ! wp core is-installed --allow-root  ; then
	wp config create --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_ROOT_USER--dbpass=$MYSQL_PASSWORD --dbhost=mariadb --path=/var/www/html/ --allow-root --skip-check
	wp core install --url="ccheyrou.42.fr" --title="Inception" --admin_user=$WORDPRESS_DB_ADMIN_USER --admin_password=$WORDPRESS_DB_ADMIN_PASSWORD --admin_email="ccheyrou@student.42.fr" --path=/var/www/html/ --allow-root
	wp user create $WORDPRESS_DB_USER ccheyrou@student.42.fr --role=author --user_pass=$WORDPRESS_DB_PASSWORD --allow-root
	wp config shuffle-salts --allow-root
fi

# if wp core is-installed --allow-root  ; then
#     echo "Wordpress is installed and running"
#     php-fpm7.3 -F -R
# else
#     echo "Wordpress's installation failed"
# fi