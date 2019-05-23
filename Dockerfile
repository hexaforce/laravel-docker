FROM php:7-fpm

EXPOSE 9000

CMD ["php", "artisan", "serve"]