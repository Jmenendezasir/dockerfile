#!/bin/bash

echo "Levantando MYSQL DOCKER..."
docker run --net phpMySQL --ip 172.30.10.10 -p 33060:3306 --expose 3306 --name bbdd -e MYSQL_ROOT_PASSWORD='1234' -v dato:/var/lib/mysql mysql/mysql-server:5.7.33;
