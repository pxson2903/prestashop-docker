FROM php:5.6-apache

LABEL maintainer="pxson.2903@gmail.com"

RUN apt-get update \
	&& apt-get install -y libmcrypt-dev \
		libjpeg62-turbo-dev \
		libpcre3-dev \
		libpng-dev \
		libfreetype6-dev \
		libxml2-dev \
		libicu-dev \
		mysql-client \
		wget \
		unzip \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install iconv intl pdo_mysql mbstring soap gd zip

RUN docker-php-source extract \
  && if [ -d "/usr/src/php/ext/mysql" ]; then docker-php-ext-install mysql; fi \
  && if [ -d "/usr/src/php/ext/mcrypt" ]; then docker-php-ext-install mcrypt; fi \
	&& if [ -d "/usr/src/php/ext/opcache" ]; then docker-php-ext-install opcache; fi \
	&& docker-php-source delete

COPY docker_run.sh /tmp/

# If handle dynamic domain
COPY docker_updt_ps_domains.php /tmp/

# Apache configuration
RUN if [ -x "$(command -v apache2-foreground)" ]; then a2enmod rewrite; fi

# PHP configuration
COPY php.ini /usr/local/etc/php/

#RUN apt-get install git -y \
#    && git clone -b php7 https://github.com/phpredis/phpredis.git /usr/src/php/ext/redis \
#    && docker-php-ext-install -j$(nproc) redis

#Adding MySQL configuration
#COPY redis.ini /etc/php/mods-available/redis.ini

CMD ["/tmp/docker_run.sh"]
