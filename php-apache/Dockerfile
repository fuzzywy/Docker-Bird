FROM php:7.2.8-apache-stretch

COPY config/php.ini-development /usr/local/etc/php/php.ini

RUN docker-php-source extract \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-enable  pdo_mysql \
    && docker-php-source delete
