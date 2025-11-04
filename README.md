## Simple squid with allowed-sites using docker

**Install docker on Debian (11)**

```bash
apt update
apt install ca-certificates curl gnupg lsb-release -y
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null


apt update
apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
```

**Deploy Debian 11 host:**

```bash

cd /opt
git clone https://github.com/emcrispim/docker_squid.git
cd docker_squid
docker build -t squid2.0 .
docker compose up -d
#check for running containers
docker ps (-a for non running containers)
```

**Restart/Reconfigure squi**
docker composer restart squid
