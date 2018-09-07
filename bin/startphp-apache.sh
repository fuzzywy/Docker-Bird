#!/bin/bash

docker run --name php-apache -p 80:80 -e TZ="Asia/Shanghai" -d php-apache/genius
