# Docker-Bird
1.Prerequisites:
Docker must be installed,better docker-compose(guide provided)
Can access eniq
Can access kget database

2.How to install 
Download the php-apache image(php-apache.tar) first
php-apache.tar: https://pan.baidu.com/s/1fd3M-IhKoRcFEWLESqiADA PW: ggjx
Execute "docker load < php-apache.tar"

3.How to start
"chmod +x ./bin/*.sh"
Then execute "./bin/start.sh"

4.How to access
view "http//localhost:80/public/index.php" to see the page


# docker install guide
1. install docker with root using rpm(centos6 install docker-io, centos7 install docker-ce)
using "--replacefiles" while installing，if packages conflict，remove them from the install files
e.g.: rpm -ivh *.rpm --replacefiles
docker-ce: https://pan.baidu.com/s/1mv7O8sxb1w_XH9AgdoPo9g PW: x4r8
docker-io: https://pan.baidu.com/s/1doHvEG-XYLu_awWOyF3w3w PW: rty3

2. config the default docker path after installation, e.g.: /data/gdata/docker

centos6 in this way:
vi /etc/sysconfig/docker

other_args="--graph=/data/gdata/docker"

centos7 in this way:

vi /usr/lib/systemd/system/docker.service:

ExecStart=/usr/bin/dockerd -g /data/gdata/docker

3. set up docker group, add the user who needs to use docker to the docker group

group add docker

usermod - a G docker $user

4. start docker, enable auto start

systemctl enable docker

systemctl start docker

5. transfer the image(.tar) to the server

6. load the image to docker

docker load < xxxx.tar


# docker-compose install guide
download: https://pan.baidu.com/s/1k-vv1qUXma494XovLDlAiA PW: eew5

put it under "/usr/local/bin"，and set its permissions appropriately
