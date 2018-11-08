#!/bin/sh
node=node:10.7.0-stretch
composer=composer

git clone https://github.com/fuzzywy/Bird.git

docker-compose build

docker pull $composer

docker pull $node

# Build Bird project

docker run -v Bird:/app --rm $composer composer install

# Install Bird UI dependency
docker run -v Bird:/home/node/app --rm -w /home/node/app $node npm install

# Build Bird UI
docker run -v Bird:/home/node/app --rm -w /home/node/app $node npm run production

# Start Bird project
docker-compose up -d

# Specify access role for web root
docker exec php-apache chmod 777 "-R" /var/www/html

# Enviroment config
docker exec php-apache cp .env.example .env

# Key generate
docker exec php-apache php artisan key:generate

# Copy project into docker container
cd Bird && docker cp . php-apache:/var/www/html

# Commit container to image
docker commit php-apache php-apache/genius

# Push image to docker registry
