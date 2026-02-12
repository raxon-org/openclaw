FROM debian:13.2
WORKDIR /Application

# Update & upgrade
RUN apt-get update && apt-get upgrade -y
RUN apt-get update && apt-get install init bash cron libzip-dev unzip wget nano php -y

# init
COPY ./Docker/Boot/start.php /usr/bin/start
COPY ./Docker/Boot/init /usr/bin/init
RUN chmod +x /usr/bin/init
RUN chmod +x /usr/bin/start

# composer
COPY ./Docker/Packages/composer/composer.phar /usr/bin/composer
RUN chmod +x /usr/bin/composer
RUN chown www-data:www-data /usr/bin/composer
RUN composer self-update

# ffmpeg
#RUN apt-get update && apt-get install ffmpeg -y

RUN apt-get update && apt-get install \
    git -y

RUN apt-get update && apt-get install apache2 \
    php8.4 \
    php8.4-fpm \
    php8.4-common \
    php8.4-mysql \
    php8.4-mysqli \
    php8.4-pdo \
    php8.4-gd \
    php8.4-intl \
    php8.4-sockets \
    php8.4-opcache \
    php8.4-mbstring \
    php8.4-readline \
    php8.4-curl \
    php8.4-zip \
    php8.4-xml \
    php8.4-sqlite3 \
    sqlite3 \
    libapache2-mod-fcgid -y

RUN curl -fsSL https://openclaw.ai/install.sh | bash
RUN curl -fsSL https://ollama.com/install.sh | sh

COPY . /Application

# Execute start script
RUN chmod +x /Application/start.sh
RUN sh /Application/start.sh
