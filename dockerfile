# Stage 1 : PHP-FPM
FROM php:8.2-fpm AS php-base
WORKDIR /var/www/html
COPY ./site /var/www/html
RUN chown -R www-data:www-data /var/www/html

# Stage 2 : Nginx
FROM nginx:latest
COPY --from=php-base /var/www/html /usr/share/nginx/html
COPY ./nginx-config/junia-site.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
