#!/bin/bash

cd /var/www/html

composer install

php artisan key:generate
php artisan cache:clear
php artisan config:clear

php-fpm
