FROM php:7.2-fpm

RUN apt-get update && apt-get install -y git wget curl libxml2-dev libssl-dev zlib1g-dev apt-transport-https lsb-release ca-certificates \
    && wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg \
    && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list \
    && docker-php-ext-install mbstring iconv xml pdo_mysql phar zip
