# Docker-Bird
1) install docker\
2) install docker-compose\
3) git clone https://fuzzywy@github.com/fuzzywy/Docker-Bird.git
4) cd Docker-Bird && docker-compose build
5) docker pull composer\
6) git clone https://fuzzywy/github.com/fuzzywy/Bird.git
7) docker run --volume /opt/Bird:/app composer composer install\
8) docker container exec php-apache chmod 777 "-R" /var/www/html\
9) docker container exec php-apache cp .env.example .env\
10) docker container exec php-apache php artisan key:generate\
11) docker-compose start\
12) http://localhost:80/public
