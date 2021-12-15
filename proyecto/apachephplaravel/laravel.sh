#!/bin/bash

defaultRoute=/var/www/html

cd $defaultRoute

composer create-project laravel/laravel apiproyecto

sed -i 's/APP_URL=http:\/\/localhost/DB_HOST=194.163.169.157/' $defaultRoute/apiproyecto/.env
sed -i 's/DB_HOST=127.0.0.1/DB_HOST=172.30.10.10/' $defaultRoute/apiproyecto/.env
sed -i 's/DB_PASSWORD=/DB_PASSWORD=1234/' $defaultRoute/apiproyecto/.env
#sed -i 's/DB_PORT=3306/DB_PORT=3306/' $defaultRoute/apiproyecto/.env
sed -i 's/DB_DATABASE=laravel/DB_DATABASE=proyecto/' $defaultRoute/apiproyecto/.env

#CONFIGURACIÓN DE APACHE
sed -i '172 s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf
sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/html\/apiproyecto\/public/' /etc/apache2/sites-available/000-default.conf

chown -R www-data:www-data /var/www/html/apiproyecto

cd /etc/apache2/mods-enabled
a2enmod rewrite

service apache2 restart