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
docker run -i -t -p "8080:80" -d -v ${PWD}/IdeaSpace-1.1.4:/app -v ${PWD}/db:/var/lib/mysql qxip/isvr
```
- Note the MySQL admin password
- Complete the setup
