FROM debian:buster

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y mariadb-server

RUN     mkdir -p /run/mysqld && chown mysql:mysql /run/mysqld

COPY	conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY	conf/mariadb.sh /var/mariadb.sh

RUN		chmod -R 777 /var/log/mysql 
RUN		chmod +x /var/mariadb.sh

EXPOSE	3306

#CMD		["sh", "/var/mariadb.sh"]
CMD		["tail", "-f", "/dev/null"]