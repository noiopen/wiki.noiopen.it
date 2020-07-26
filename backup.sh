#!/bin/bash
cd "$(dirname $0)"
date
docker exec -i wiki php /var/www/html/maintenance/sqlite.php --backup-to /var/www/backup/noiopen.sqlite
git add -f images/* backup/*
git commit -m "backup $(date)" -a
git push origin master
