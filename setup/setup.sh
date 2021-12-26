#!/bin/sh

# download config
curl -o prometheus.yml https://raw.githubusercontent.com/m0uka/grafana-utils/master/setup/prometheus.yml

# install docker compose (docker should already be installed)
apt install docker-compose -y

# download docker-compose.yml
curl -o docker-compose.yml https://raw.githubusercontent.com/m0uka/grafana-utils/master/setup/docker-compose.yml

# setup docker compose
docker-compose up -d

echo "Successfully deployed."
