# Docker-Bird
1) install docker\
2) install docker-compose\
3) git clone https://fuzzywy@github.com/fuzzywy/Docker-Bird.git
4) cd Docker-Bird && docker-compose build
5) docker pull composer\
6) cd /opt
7) git clone https://fuzzywy/github.com/fuzzywy/Bird.git
8) docker run --volume /opt/Bird:/app composer composer install\
9) cd Docker-Bird && docker-compose up -d
9) docker container exec php-apache chmod 777 "-R" /var/www/html\
10) docker container exec php-apache cp .env.example .env\
11) docker container exec php-apache php artisan key:generate\
12) http://localhost:80/public
