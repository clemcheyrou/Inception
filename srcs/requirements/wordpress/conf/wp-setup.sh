#!/bin/bash

sleep 8;
if  [ ! -f /var/www/wordpress/wp-config.php ]; then 
    
    wp core --allow-root download --locale=fr_FR --force 
    sleep 5;
    while  [ ! -f /var/www/wordpress/wp-config.php ]; do   

        
        wp core config --allow-root --dbname=wordpress --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb:3306
        

    done 
    wp core install --allow-root --url='ccheyrou.42.fr' --title='WordPress for Inception' --admin_user=$WORDPRESS_DB_USER --admin_password=$WORDPRESS_DB_PASSWORD  --admin_email="admin@admin.fr" --path='/var/www/wordpress';
    wp  user create --allow-root ccheyrou user2@user.com --user_pass='1234' --role=author
    wp theme install --allow-root dark-mode --activate     
fi 
php-fpm7.3 --nodaemonize