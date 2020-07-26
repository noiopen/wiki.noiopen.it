#!/bin/bash
cd "$(dirname $0)"
date
docker exec -i wiki php /var/www/html/maintenance/sqlite.php --backup-to /var/www/backup/noiopen.sqlite
cd backup
split -b 999K --additional-suffix=.bin noiopen.sqlite noiopen.sqlite- 
 
