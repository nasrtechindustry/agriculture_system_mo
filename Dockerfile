FROM php:8.2-apache

# Copy your app files into the Apache web root
COPY . /var/www/html/

# Enable Apache mod_rewrite if needed
RUN a2enmod rewrite
