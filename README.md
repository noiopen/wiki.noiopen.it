# MediaWiki for NoiOpen

To install:

- get a server with docker, docker-compose, caddy, make, git and git-lfs
- create an user noiopen 
- git clone this repo as `/home/noiopen/wiki.noiopen.it` with an url allowing git push back (as we backup in git)
- `make restore` to restore the database
- `sudo make setup` to setup the cron job for the backup and the service


