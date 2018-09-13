FROM php:7.2.8-apache-stretch

COPY ./conf/php.ini-development /usr/local/etc/php/php.ini

RUN apt-get update \
	&& apt-get install -y \
        freetds-bin \
        freetds-dev \
        freetds-common \
		#libsybdb5 \
	&& ln -s /usr/lib/x86_64-linux-gnu/libsybdb.so /usr/lib/ \
	&& docker-php-source extract \
    && docker-php-ext-install pdo_mysql pdo_dblib\
    && docker-php-ext-enable  pdo_mysql pdo_dblib\
    && docker-php-source delete