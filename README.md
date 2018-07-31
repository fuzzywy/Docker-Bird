# Docker-Bird
1） install docker\
2） install docker-compose\
3)  git clone https://fuzzywy@github.com/fuzzywy/Docker-Bird.git
4)  docker pull composer\
5)  docker run --volume /opt/Bird:/app composer composer install\
6)  docker container exec php-apache chmod 777 "-R" /var/www/html\
7)  docker container exec php-apache cp .env.example .env\
8)  docker container exec php-apache php artisan key:generate\
9)  docker-compose start\
10) http://localhost:80/public
