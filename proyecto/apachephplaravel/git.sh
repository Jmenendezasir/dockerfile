#!/bin/bash

defaultRoute=/var/www/html/apiproyecto
repoGit=https://github.com/Jmenendezasir/apiproyecto.git

cd $defaultRoute


git init
git remote add origin $repoGit
git pull origin main
git reset --hard origin/main

# Haremos un migrate en laravel tras importar el repositorio. Eliminaremos el migrate que crea por defecto Passport.

rm $defaultRoute/database/migrations/2014_10_12_000000_create_users_table.php

php artisan migrate
php artisan passport:install

service apache2 start
tail -f /dev/null