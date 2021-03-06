#!/usr/bin/env bash

docker volume create --name letsencrypt

docker-compose up -d

docker run -it --rm \
-v letsencrypt:/etc/letsencrypt \
-v "/$(pwd)/site:/data/letsencrypt:z" \
certbot/certbot \
certonly --webroot \
--email "$1" --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d muz.ca -d www.muz.ca

docker-compose down