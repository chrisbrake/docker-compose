#!/usr/bin/env bash

docker volume create --name letsencrypt

docker-compose up -d

docker run -it --rm \
-v letsencrypt:/etc/letsencrypt \
-v "/$(pwd)/site:/data/letsencrypt:z" \
certbot/certbot \
certonly --webroot \
--register-unsafely-without-email --agree-tos \
--webroot-path=/data/letsencrypt \
--staging \
-d muz.ca -d www.muz.ca

docker-compose down