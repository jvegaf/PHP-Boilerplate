# Docker + PHP + MysSQL application boilerplate

Stack:

* PHP 7.3
* PHPunit 8
* Doctrine migrations 2
* Doctrine ORM 2.3

## Build container

```
$ docker build -t php-7.3-apache .
```

## Start environment

```
$ docker-compose up
```

## Create database

```
$ mysql -h127.0.0.1 -uroot -proot -e "CREATE DATABASE application_db_name"
```

## Run composer

```
$ docker exec -ti php-7.3-apache /usr/local/bin/composer
```

## Run tests

```
$ docker exec -ti php-7.3-apache /usr/local/bin/composer test
$ docker exec -ti php-7.3-apache /var/www/html/vendor/bin/phpunit --configuration /var/www/html/phpunit.xml
```

## Set environment variables config

```
$ cp environment/.env.example environment/.env
```

## Generate migration

```
$ docker exec -ti php-7.3-apache /var/www/html/vendor/bin/doctrine-migrations generate
```

## Execute migrations

```
$ docker exec -ti php-7.3-apache /var/www/html/vendor/bin/doctrine-migrations migrations:migrate -n
```

## Migrations rollback

```
$ docker exec -ti php-7.3-apache /var/www/html/vendor/bin/doctrine-migrations migrations:execute -n --down <version>
```
