#!/bin/bash

defaultRoute=/var/www/html

cd $defaultRoute

composer create-project laravel/laravel apiproyecto

sed -i 's/DB_HOST=127.0.0.1/DB_HOST=172.30.10.10/' $defaultRoute/apiproyecto/.env
sed -i 's/DB_PASSWORD=/DB_PASSWORD=1234/' $defaultRoute/apiproyecto/.env
#sed -i 's/DB_PORT=3306/DB_PORT=3306/' $defaultRoute/apiproyecto/.env
sed -i 's/DB_DATABASE=laravel/DB_DATABASE=proyecto/' $defaultRoute/apiproyecto/.env
