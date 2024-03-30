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
        --url="${WORDPRESS_SITE_URL}" \
        --title="${WORDPRESS_SITE_TITLE}" \
        --admin_user="${WORDPRESS_ADMIN_USER}" \
        --admin_password="${MYSQL_ROOT_PASSWORD}" \
        --admin_email="sejojo@naver.com" \
        --path="/var/www/html" \
        --allow-root

    # Create a regular user
    wp user create "${WORDPRESS_USER_ID}" bibigo@cj.com --role=author --user_pass="${WORDPRESS_USER_PASSWORD}" --path="/var/www/html" --allow-root
fi

# Run the original entrypoint script
docker-entrypoint.sh php-fpm
