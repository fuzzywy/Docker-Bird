#!/bin/sh

docker stop bird_country

docker rm bird_country

docker run --name bird_country --link mariadb -p 80:80 -d php-apache/genius 

