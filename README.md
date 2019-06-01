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
