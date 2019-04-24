# ISVR-Docker
IdeaSpaceVR Docker Container

## Build
```
docker build -t qxip/isvr .
```

#### Persistent Setup
- Download the [latest](https://www.ideaspacevr.org/download) IdeaSpace and uncompress
- Create a blank directory for the DB (ie: `./db`)
- Execute Container using local Mapping
```
docker run -i -t -p "8080:80" -d -v ${PWD}/IdeaSpace-1.1.5:/app -v ${PWD}/db:/var/lib/mysql qxip/isvr
```
- Note the MySQL admin password (`docker logs`)
- Complete the setup
- Put in .htaccess: 

php_value upload_max_filesize 100M
php_value post_max_size 100M
php_value memory_limit 512M