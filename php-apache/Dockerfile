FROM php:7.2.8-apache-stretch

COPY ./conf/php.ini-development /usr/local/etc/php/php.ini

COPY ./conf/000-default.conf /etc/apache2/sites-available/000-default.conf

# enable rewrite.load
RUN ln -s /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/

# install extensions: pdo_dblib, pdo_mysql
RUN apt-get update \
    && apt-get install -y \
        freetds-bin \
        freetds-dev \
        freetds-common \
    && ln -s /usr/lib/x86_64-linux-gnu/libsybdb.so /usr/lib/ \
    && docker-php-source extract \
    && docker-php-ext-install pdo_mysql pdo_dblib\
    && docker-php-ext-enable  pdo_mysql pdo_dblib\
    && docker-php-source delete