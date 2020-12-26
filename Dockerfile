FROM php:7.2-apache
RUN pecl install -f xdebug \
&& echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
&& echo "xdebug.mode = debug" >> /usr/local/etc/php/conf.d/xdebug.ini \
&& echo "xdebug.start_with_request = yes" >> /usr/local/etc/php/conf.d/xdebug.ini \
&& echo "xdebug.remote_log = /tmp/xdebug.log" >> /usr/local/etc/php/conf.d/xdebug.ini \
&& echo "xdebug.client_host = host.docker.internal" >> /usr/local/etc/php/conf.d/xdebug.ini \
&& echo "xdebug.client_port = 9003" >> /usr/local/etc/php/conf.d/xdebug.ini;
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf;

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
# Tools
    apt-utils \
    wget \
    git \
    nano \
    iputils-ping ;