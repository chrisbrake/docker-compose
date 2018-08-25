#!/usr/bin/env bash

docker run -it --rm \
-v ./site:/data/letsencrypt:z \
certbot/certbot \
certonly --webroot \
--register-unsafely-without-email --agree-tos \
--webroot-path=/data/letsencrypt \
--staging \
--config-dir ~/.certbot/config \
--logs-dir ~/.certbot/logs \
--work-dir ~/.certbot/work \
-d muz.ca -d www.muz.ca