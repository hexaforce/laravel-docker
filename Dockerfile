FROM php:7.3-fpm-alpine
RUN apk add libzip-dev
RUN docker-php-ext-configure zip --with-libzip
RUN docker-php-ext-install pdo_mysql zip
