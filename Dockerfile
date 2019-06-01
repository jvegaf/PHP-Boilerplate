FROM php:7.3-apache

RUN apt-get update && \
    apt-get install git unzip -y

RUN curl -fsSL 'https://xdebug.org/files/xdebug-2.7.2.tgz' -o xdebug.tar.gz \
    && mkdir -p xdebug \
    && tar -xf xdebug.tar.gz -C xdebug --strip-components=1 \
    && rm xdebug.tar.gz \
    && ( \
    cd xdebug \
    && phpize \
    && ./configure --enable-xdebug \
    && make -j$(nproc) \
    && make install \
    ) \
    && rm -r xdebug \
    && docker-php-ext-enable xdebug

RUN docker-php-ext-install pdo_mysql

RUN echo 'xdebug.remote_host=192.168.1.130' >> /usr/local/etc/php/php.ini
RUN echo 'xdebug.remote_enable=1' >> /usr/local/etc/php/php.ini
RUN echo 'xdebug.remote_port=9001' >> /usr/local/etc/php/php.ini

RUN sed -i -e 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/html\/public/g' /etc/apache2/sites-available/000-default.conf

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

VOLUME ["/var/www/html"]
WORKDIR /var/www/html
