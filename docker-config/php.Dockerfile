FROM php:7-fpm

# Pass initial project name via docker-compose build --build-arg PROJECT_NAME="{name}"
# ARG PROJECT_NAME

# Basic setup
RUN apt-get clean
RUN apt-get update

# Install some basic tools
RUN apt-get install -y \
        git \
        tree \
        nano \
        wget \
        libzip-dev \
        zip \
				zlib1g-dev \ 
				libonig-dev

# We'll need these base extensions to install Kirby
RUN apt-get update -y && apt-get install -y libpng-dev
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install zip
RUN docker-php-ext-install gd

# Install Composer
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy over log.conf file (needed?)
COPY log.conf /usr/local/etc/php-fpm.d/zz-log.conf

# WORKDIR /code
# RUN composer create-project getkirby/plainkit src


# References:
# - https://stackoverflow.com/questions/48700453/docker-image-build-with-php-zip-extension-shows-bundled-libzip-is-deprecated-w
# - https://stackoverflow.com/questions/39657058/installing-gd-in-docker
# - https://stackoverflow.com/questions/51443557/how-to-install-php-composer-inside-a-docker-container