FROM nginx:alpine
COPY static/ /usr/share/nginx/html/
COPY prod.conf /etc/nginx/conf.d/
RUN apk add openssl; openssl dhparam -out /etc/ssl/certs/dhparam-2048.pem 2048