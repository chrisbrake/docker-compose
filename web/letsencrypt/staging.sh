#!/usr/bin/env bash

docker run -it --rm \
-v /docker-volumes/etc/letsencrypt:/etc/letsencrypt:z \
-v /docker-volumes/var/lib/letsencrypt:/var/lib/letsencrypt:z \
-v /docker/letsencrypt-docker-nginx/src/letsencrypt/site:/data/letsencrypt:z \
-v /docker-volumes/var/log/letsencrypt:/var/log/letsencrypt:z \
certbot/certbot \
certonly --webroot \
--register-unsafely-without-email --agree-tos \
--webroot-path=/data/letsencrypt \
--staging \
--config-dir ~/.certbot/config \
--logs-dir ~/.certbot/logs \
--work-dir ~/.certbot/work \
-d muz.ca -d www.muz.ca