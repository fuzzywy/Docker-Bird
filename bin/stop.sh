#!/bin/bash

echo "waiting for stop"
docker stop php-apache

docker rm php-apache
echo "stop php-apache...ok"

docker stop mariadb

docker rm mariadb
echo "stop mariadb...ok"
