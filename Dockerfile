FROM nsign/php-docker:7.1-fpm

RUN apt-get install -y --no-install-recommends libicu52 libicu-dev \
    && docker-php-ext-install intl \
    && docker-php-ext-enable intl \

    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-enable pdo_mysql \

    && pecl install https://xdebug.org/files/xdebug-2.5.5.tgz \
    && docker-php-ext-enable xdebug \

    && apt-get autoremove -y && apt-get clean all
