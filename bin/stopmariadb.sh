#!/bin/bash

echo "waiting for stop"
docker stop mariadb

docker rm mariadb
echo "stop mariadb...ok"
