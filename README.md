Simple squid with allowed-sites using docker

Start service command line:

docker compose up -d 


Deploy Debian 13 host:

As root

apt update && apt install docker

cd /opt

git clone https://github.com/emcrispim/docker_squid.git

cd docker_squid
