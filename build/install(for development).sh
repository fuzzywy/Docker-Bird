#!/bin/sh
node=node:10.7.0-stretch
composer=composer

git clone https://github.com/fuzzywy/Bird.git

mv ./Bird/ /opt/

cd .. && docker-compose build

docker pull $composer

docker pull $node

docker run -v /opt/Bird:/app --rm $composer composer install

docker run -v /opt/Bird:/home/node/app --rm -w /home/node/app $node npm install

docker run -v /opt/Bird:/home/node/app --rm -w /home/node/app $node npm i bootstrap-vue

docker run -v /opt/Bird:/home/node/app --rm -w /home/node/app $node npm i vue-highcharts -S

docker run -v /opt/Bird:/home/node/app --rm -w /home/node/app $node npm install --save highcharts

docker run -v /opt/Bird:/home/node/app --rm -w /home/node/app $node npm install vue-router

docker run -v /opt/Bird:/home/node/app --rm -w /home/node/app $node npm install vuex --save-dev

docker-compose up -d

docker exec php-apache chmod 777 "-R" /var/www/html

docker exec php-apache cp .env.example .env

docker exec php-apache php artisan key:generate
