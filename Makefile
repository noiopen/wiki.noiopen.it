run:
	docker-compose up

build:
	docker-compose build --build-arg CURRENT_UID=$(shell id -u)

dev: build run

in:
	docker exec -ti wiki bash

restore:
	cp backup/noiopen.sqplite data/noiopen.sqlite

backup:
	docker exec -ti wiki php /var/www/html/maintenance/sqlite.php --backup-to /var/www/backup/noiopen.sqlite

.PHONY: all run build in backup
