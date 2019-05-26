FROM php:7.3-fpm-alpine

RUN apk update

RUN apk add libzip-dev
RUN docker-php-ext-configure zip --with-libzip
RUN docker-php-ext-install pdo_mysql zip

RUN apk add autoconf build-base
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.remote_autostart=1" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN echo "xdebug.remote_enable=1" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN echo "xdebug.remote_host=host.docker.internal" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN echo "xdebug.remote_port=9000" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# RUN echo "xdebug.remote_log=docker-php-ext-xdebug.log" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
