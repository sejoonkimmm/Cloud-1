FROM wordpress:latest

COPY entrypoints.sh /entrypoints.sh

RUN chmod +x /entrypoints.sh

ENTRYPOINT ["entrypoints.sh", "db", "docker-entrypoint.sh"]