#!/usr/bin/env bash

docker run -it --rm \
-v "/$(pwd)/tmp/etc/letsencrypt:/etc/letsencrypt:z" \
-v "/$(pwd)/tmp/var/lib/letsencrypt:/var/lib/letsencrypt:z" \
-v "/$(pwd)/tmp/site:/data/letsencrypt:z" \
-v "/$(pwd)/tmp/var/log/letsencrypt:/var/log/letsencrypt:z" \
certbot/certbot \
certonly --webroot \
--register-unsafely-without-email --agree-tos \
--webroot-path=/data/letsencrypt \
--staging \
--config-dir ~/.certbot/config \
--logs-dir ~/.certbot/logs \
--work-dir ~/.certbot/work \
-d muz.ca -d www.muz.ca