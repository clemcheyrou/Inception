#!/bin/bash

wp config create --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER
wp core install --url="ccheyrou.42.fr" --title="Inception" --admin_user=$WORDPRESS_DB_USER
wp user create user ccheyrou@42.student.fr --role=author