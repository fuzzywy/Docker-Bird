# Docker-Bird
## Prerequisites
* Docker must be installed,better docker-compose(guide provided)
* Config the docker,add insecure-registries(if using `docker pull` command from private registry)
* Can access eniq
* Can access kget database

## How to install 
* Download the php-apache image(php-apache.tar) first. Excute `docker pull 47.99.129.128:5000/php-apache/genius`
* or download the [php-apache.tar](https://pan.baidu.com/s/1fd3M-IhKoRcFEWLESqiADA)(PW: ggjx) here:<br>
Then upload the image to server,execute `docker load < php-apache.tar`

## How to start
`chmod +x ./bin/*.sh`<br>
Then execute `./bin/start.sh`

## How to access
View "http//localhost:80/public/index.php" to see the page


# Docker install guide
## Install docker with root using rpm
* centos6 install [docker-io](https://pan.baidu.com/s/1doHvEG-XYLu_awWOyF3w3w)(PW: rty3), centos7 install [docker-ce](https://pan.baidu.com/s/1mv7O8sxb1w_XH9AgdoPo9g)(PW:x4r8)
* using `--replacefiles` while installing，if packages conflict，remove them from the install files.<br>
e.g.: `rpm -ivh *.rpm --replacefiles`

## Config the docker after installation<br>
e.g.: default docker path:`/data/gdata/docker`, insecure-registries: `47.99.129.128:5000`

* centos6 in this way:
     
      vi /etc/sysconfig/docker
      other_args="--graph=/data/gdata/docker --insecure-registry=47.99.129.128:5000"

* centos7 in this way:<br>
`vim /etc/docker/daemon.json` If the file doesn't exist,create it.

      {
        "graph": "/data/gdata/docker",
        "insecure-registries": [
          "47.99.129.128:5000"
        ]
      }

* set up docker group, add the user who needs to use docker to the docker group

      group add docker
      usermod - a G docker $user

* start docker, enable auto start

      systemctl enable docker
      systemctl start docker

* transfer the image(.tar) to the server

* load the image to docker
      
      docker load < xxxx.tar


# Docker-compose install guide
Download [docker-compose](https://pan.baidu.com/s/1k-vv1qUXma494XovLDlAiA)(PW: eew5) first.

Put it under `/usr/local/bin`，and set its permissions appropriately.

# Test gerrit 6
