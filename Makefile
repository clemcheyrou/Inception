all: up

up:
	@mkdir -p ${PWD}/inception_data/mariadb
	@mkdir -p ${PWD}/inception_data/wordpress
	@sudo docker-compose -f srcs/docker-compose.yml up --build

clean: stop
	sudo docker system prune -a -f --volumes

clear: clean
	sudo docker volume rm wordpress mariadb

stop:
	sudo docker-compose -f srcs/docker-compose.yml down

re: clean all
	rm -rf /home/inception/inception_data/mariadb
	rm -rf /home/inception/inception_data/wordpress

show:
	sudo docker ps
	sudo docker volume ls -q
	sudo docker container ls -q

logs:
	sudo docker logs wordpress
	sudo docker logs mariadb
	sudo docker logs nginx

.PHONY: up clean stop re clear show logs