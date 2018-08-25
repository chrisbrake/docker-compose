#!/usr/bin/env bash

docker run -it --rm \
-v "/$(pwd)/tmp/etc/letsencrypt:/etc/letsencrypt:z" \
-v "/$(pwd)/tmp/var/lib/letsencrypt:/var/lib/letsencrypt:z" \
-v "/$(pwd)/site:/data/letsencrypt:z" \
-v "/$(pwd)/tmp/var/log/letsencrypt:/var/log/letsencrypt:z" \
certbot/certbot \
certonly --webroot \
--email "$1" --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d muz.ca -d www.muz.ca