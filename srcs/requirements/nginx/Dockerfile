FROM debian:buster

RUN apt-get update && \
	apt-get install -y nginx openssl

RUN mkdir -p /etc/nginx/ssl

#CLE ET CERTIFICAT TSL
RUN openssl req -x509 -nodes \
	-out /etc/nginx/ssl/inception.crt \
	-keyout /etc/nginx/ssl/inception.key \
	-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=ccheyrou.42.fr/UID=ccheyrou"

RUN mkdir -p /var/run/nginx

COPY conf/nginx.conf /etc/nginx.conf

RUN	mkdir -p /var/www/html
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

CMD [ "nginx", "-g", "daemon off;" ]