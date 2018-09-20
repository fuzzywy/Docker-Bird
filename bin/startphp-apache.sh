#!/bin/bash

docker run --name php-apache --link mariadb -p 80:80 -e TZ="Asia/Shanghai" -d php-apache/genius
echo "start php-apache...ok"
