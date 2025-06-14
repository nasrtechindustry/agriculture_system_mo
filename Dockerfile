FROM php:8.2-apache

# Install mysqli
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Enable mod_rewrite
RUN a2enmod rewrite

# Avoid Apache warning
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Copy your app files into Apache web root
COPY . /var/www/html/
