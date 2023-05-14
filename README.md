### Automatically build a jsxm Docker container and push it to Docker Hub

> Original repo: https://github.com/a1k0n/jsxm/

Docker command:

```
docker run -d --name=jsxm -p 8081:8080 --restart=unless-stopped tsanfer/jsxm:latest 
```

Docker-compose file

```yaml
# FastTracker 2 .xm module player in Javascript
# File location：$HOME/fsxm.yml

version: "3"
services:
  fsxm:
    image: tsanfer/jsxm:latest
    container_name: jsxm
    ports:
      - 8081:8080
    restart: unless-stopped
```
