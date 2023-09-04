FROM debian:buster

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y mariadb-server

COPY	conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY	conf/mariadb.sh /etc/mariadb.sh

RUN		chmod +x /etc/mariadb.sh

EXPOSE	3306

CMD		["sh", "/etc/mariadb.sh"]