# Baixa a imagem do ubuntu versão 12.04
FROM ubuntu:14.04.5

# Instalação dos pacotes
RUN apt-get update && apt-get install -y \
apache2 \
php5 \
php5-cli \
php5-common \
php5-gd \
php5-json \
php5-ldap \
php5-mysql \
php5-pgsql \
php5-apcu \
php5-imagick \
php5-mcrypt \
php5-sybase \
php5-xdebug \
phpunit \
nano \
&& apt-get clean

# Habilita o modo de reescrita do apache
RUN a2enmod rewrite

ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="/var/run/apache2.pid"
ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"

LABEL Description="Webserver php 5.5.9"

VOLUME /var/www/html

# Copia o arquivo de virtualhost
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80

ENTRYPOINT service apache2 start && /bin/bash