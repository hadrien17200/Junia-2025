# Dockerfile pour GitHub Actions
FROM php:8.2-fpm

# Copier le site dans le container
COPY ./site /var/www/html

# Installer les extensions PHP si nécessaire
# RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html
