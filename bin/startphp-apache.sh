#!/bin/bash

docker run -it -d --name php-apache -v /opt/Bird:/var/www/html -p 80:80 -e TZ="Asia/Shanghai" php
echo "start php-apache...ok"
