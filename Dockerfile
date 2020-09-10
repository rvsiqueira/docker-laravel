FROM php:7.3.6-fpm-alpine3.9

RUN apk add bash

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

EXPOSE 9000

ENTRYPOINT [ "php-fpm" ]