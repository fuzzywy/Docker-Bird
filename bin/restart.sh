#!/bin/bash

echo "restart php-apache..."
docker restart php-apache

echo "restart mariadb..."
docker restart mariadb
echo "restart finished"
