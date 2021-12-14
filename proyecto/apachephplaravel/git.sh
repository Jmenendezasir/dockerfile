#!/bin/bash

defaultRoute=/var/www/html/apiproyecto
repoGit=https://github.com/Jmenendezasir/apiproyecto.git

cd $defaultRoute


git init
git remote add origin $repoGit
git pull origin main
git reset --hard origin/main


service apache2 start
tail -f /dev/null