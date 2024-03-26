FROM phpmyadmin/phpmyadmin:latest

RUN apt-get update && apt-get install -y openssl

RUN mkdir -p /usr/local/apache2/conf && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj '/CN=localhost' \
    -keyout /var/www/html/server.key \
    -out /var/www/html/server.crt
