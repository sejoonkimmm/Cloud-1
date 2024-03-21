#!/bin/bash



wp core download --allow-root

# Configure WordPress if not already configured
if ! $(wp core is-installed --allow-root); then
    wp config create \
        --dbname="${WORDPRESS_DB_NAME}" \
        --dbuser="${WORDPRESS_DB_USER}" \
        --dbpass="${WORDPRESS_DB_PASSWORD}" \
        --dbhost="${WORDPRESS_DB_HOST}" \
        --dbcharset="utf8" \
        --dbcollate="" \
        --path="/var/www/html" \
        --allow-root
    
    wp core install \
        --url="localhost" \
        --title="sejokim's cloud_1" \
        --admin_user="sejokim" \
        --admin_password="${MYSQL_ROOT_PASSWORD}" \
        --admin_email="sejojo@naver.com" \
        --path="/var/www/html" \
        --allow-root

    # Create a regular user
    wp user create bibigo bibigo@cj.com --role=author --user_pass="securepass" --path="/var/www/html" --allow-root
fi

# Run the original entrypoint script
docker-entrypoint.sh php-fpm
