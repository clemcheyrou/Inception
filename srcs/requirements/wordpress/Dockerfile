FROM debian:buster

RUN apt update -y && \
    apt upgrade -y && \
    apt clean

RUN apt install -y wget php7.3 php-fpm php-mysql mariadb-client && \
    apt clean

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html

RUN wp core download --allow-root

COPY ./conf/wordpress.sh wordpress.sh
RUN chmod +x wordpress.sh

EXPOSE 9000

CMD ["/bin/bash", "wordpress.sh"]