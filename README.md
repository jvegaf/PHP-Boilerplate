This repository is a fork of [PHP Boilerplate](https://github.com/PabloLaVegui/PHP-Boilerplate)

Recommend you read the [blog post](http://cowsandcode.com/2018/php-phpstorm-docker-xdebug/)

---


# Docker + PHP + MySQL application boilerplate

Stack:

* PHP 7.3
* PHPunit 8


## Start environment

```
$ docker-compose up
```

## Install dependencies 

```
$ docker exec -ti webserver /usr/local/bin/composer install
 
```

## Run composer

```
$ docker exec -ti webserver /usr/local/bin/composer
```

## Run tests

```
$ docker exec -ti webserver /usr/local/bin/composer test
$ docker exec -ti webserver /var/www/html/vendor/bin/phpunit --configuration /var/www/html/phpunit.xml
```
