#!/usr/bin/env bash

docker run --rm -it --name certbot \
    -v letsencrypt:/etc/letsencrypt \
    -v /docker-volumes/data/letsencrypt:/data/letsencrypt \
    certbot/certbot renew \
    --webroot -w /data/letsencrypt --quiet \
    \
    && docker kill --signal=HUP web