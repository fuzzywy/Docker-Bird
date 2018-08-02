# Docker-Bird
1) install docker & docker-compose
2) git clone https://github.com/fuzzywy/Docker-Bird.git
3) git clone https://github.com/fuzzywy/Bird.git
4) cd Docker-Bird && docker-compose build
5) docker run -v Bird:/app composer composer install
6）docker run -v Bird:/home/node/app -w /home/node/app node npm install
7) docker run -v Bird:/home/node/app -w /home/node/app node npm run dev
9) cd Docker-Bird && docker-compose up -d
9) docker container exec php-apache chmod 777 "-R" /var/www/html\
10) docker container exec php-apache cp .env.example .env\
11) docker container exec php-apache php artisan key:generate\
12) http://localhost:80/public
