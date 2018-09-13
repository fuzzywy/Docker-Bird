#!/bin/bash
echo "wait for 10 seconds to initialize the database..."
docker run --name mariadb -p 13306:3306 -e MYSQL_ROOT_PASSWORD=mongs -e TZ='Asia/Shanghai' -d mariadb/genius

sleep 10
docker exec -it mariadb mysql -uroot -pmongs -e 'source schema.sql'
echo "initialize complete...connect to mariadb in port 13306"
