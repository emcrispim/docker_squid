## Simple squid with allowed-sites using docker



**Deploy Debian 13 host:**

As root
```bash

apt update && apt install docker
cd /opt
git clone https://github.com/emcrispim/docker_squid.git
cd docker_squid
docker build -t squid2.0 .
docker compose up -d
#check for running containers
docker ps (-a for non running containers)
```
