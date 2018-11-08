#!/bin/sh
node=node:10.7.0-stretch
composer=composer
prj=$PWD/Bird

# Pull source code
git clone https://eDeploy:ehub1234@github.com/fuzzywy/Bird.git

# Build image
docker-compose build

# Pull composer image
docker pull $composer

# Pull node imge
docker pull $node

# Build Bird project
docker run -v $prj:/app --rm $composer composer install

# Install Bird UI dependency
docker run -v $prj:/home/node/app --rm -w /home/node/app $node npm install

# Build Bird UI
docker run -v $prj:/home/node/app --rm -w /home/node/app $node npm run production

# Start php-apache image
docker run -d --name php-apache php-apache/genius 

# Copy project into docker container
cd $prj && docker cp . php-apache:/var/www/html

# Specify access role for web root
docker exec php-apache chmod 777 "-R" /var/www/html

# Enviroment config
docker exec php-apache cp .env.example .env

# Key generate
docker exec php-apache php artisan key:generate

# Stop container
docker stop php-apache

# Commit changes to image
docker commit php-apache php-apache/genius

# Remove src dir
rm -rf $prj

# Push image to docker registry
