FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y squid && rm -rf /var/lib/apt/lists/*

COPY squid.conf /etc/squid/squid.conf
COPY allowed-sites.txt /etc/squid/allowed-sites.txt


EXPOSE 3128

# CMD ["squid", "-N", "-d", "1"]

