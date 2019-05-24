# TL;DR

```
hexaforce:~ relics9$ php -v
PHP 7.3.5 (cli) (built: May  2 2019 12:40:36) ( NTS )

hexaforce:~ relics9$ composer -v
Composer version 1.8.4 2019-02-11 10:52:10

hexaforce:~ relics9$ laravel -v
Laravel Installer 2.1.0
```

## procedure
```

git clone git@github.com:hexaforce/laravel-docker.git

cd laravel-docker

laravel new laravel
cat .env.docker > ./laravel/.env

cd laravel

php artisan key:generate
composer install

cd ..

docker-compose up 

```

## look up

http://localhost:8080/

![SS](ss.png "SS")