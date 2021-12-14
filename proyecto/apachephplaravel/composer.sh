#!/bin/bash
set -e

php -r "copy('https://getcomposer.org/installer','/root/composer-setup.php');";
php composer-setup.php --install-dir=/usr/local/bin --filename=composer