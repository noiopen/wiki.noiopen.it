run:
	docker-compose up

build:
	docker-compose build --build-arg CURRENT_UID=$(shell id -u)

dev: build run

in:
	docker exec -ti wiki bash

restore:
	cp -v backup/* data/noiopen.sqlite

backup:
	./backup.sh


setup:
	id -u | grep 0
	crontab $(PWD)/crontab
	cp wiki.service /etc/systemd/system
	systemctl enable wiki.service
	systemctl start wiki.service


.PHONY: all run build in backup restore setup dev

