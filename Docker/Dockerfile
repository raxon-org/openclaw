FROM debian:13.2
WORKDIR /Application

# init
COPY ./Docker/Boot/start.php /usr/bin/start
COPY ./Docker/Boot/init.sh /usr/bin/init
RUN chmod +x /usr/bin/init
RUN chmod +x /usr/bin/start

# Update & upgrade
RUN apt-get update && apt-get upgrade -y
RUN apt-get update && apt-get install init bash cron libzip-dev unzip wget nano curl composer nodejs npm -y

# composer
# COPY ./Docker/Packages/composer/composer.phar /usr/bin/composer
# RUN chmod +x /usr/bin/composer
# RUN chown www-data:www-data /usr/bin/composer
# RUN composer self-update

# ffmpeg
#RUN apt-get update && apt-get install ffmpeg -y

RUN apt-get update && apt-get install apache2 \
  git \
  php8.4 \
  php8.4-fpm \
  php8.4-common \
  php8.4-mysql \
  php8.4-mysqli \
  php8.4-pdo \
  php8.4-gd \
  php8.4-intl \
  php8.4-sockets \
  php8.4-mbstring \
  php8.4-readline \
  php8.4-curl \
  php8.4-zip \
  php8.4-xml \
  php8.4-sqlite3 \
  php8.4-ssh2 \
  sqlite3 \
  libapache2-mod-fcgid \
  zstd -y

COPY . /Application
RUN curl -fsSL https://ollama.com/install.sh | sh
RUN npm install -g npm
RUN npm install -g node
RUN npm install -g openclaw@latest
RUN mkdir -p /Application/Bin
RUN composer install -n
RUN php /Application/Bin/Raxon.php bin app
RUN app install raxon/boot -skip=cache-clear
RUN app install raxon/ollama
RUN app raxon/ollama start -context_length=32000
# RUN sleep 2 && ollama pull qwen3-vl:4b
# Execute start script
RUN chmod +x /Application/start.sh
RUN sh /Application/start.sh
