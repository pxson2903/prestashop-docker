# PrestaShop using Apache, Mysql, PhpMyAdmin with Docker Compose

A simple dockerized version using [PrestaShop](https://www.prestashop.com/) using [Apache](https://httpd.apache.org/), [MySQL](https://www.mysql.com) and [phpMyAdmin](https://www.phpmyadmin.net/). 
This project is based on [Prestashop](https://github.com/PrestaShop/docker/) and [nginx-prestashop](https://github.com/schlpbch/nginx-prestashop). I make it for my Prestashop development, avoid some prestashop issues related to Nginx.

This project support Prestashop version 1.6.x and 1.7.x. To download specific version, please edit it in the file [install-prestashop.1.6.sh](install-prestashop.1.6.sh) or [install-prestashop.1.7.sh](install-prestashop.1.7.sh)

## Installation

*Prerequisite*:
- Docker and Docker-compose are installed on your system.
- You have cloned [this](https://github.com/pxson2903/prestashop-docker.git) repository.

Here are the steps to get started:

1. Change into directory:

 ```bash
cd prestashop-docker
 ```
   Your directory should now look like this:

 ```
.
├── docker-compose.yml
├── docker-images
│   ├── apache
│   │   ├── Dockerfile
│   │   └── php.ini
|   │   └── docker_run.sh
|   |   └── docker_updt_ps_domains.php
├── install-prestaShop1.6.sh
├── install-prestaShop1.7.sh
├── LICENSE
└── README.md
 ```

2. Download prestashop project to the current directory by running bash file.
Example: To install prestashop 1.6, run this command:
 ```
    ./install-prestashop.1.6.sh 
 ```

3. Config database, admin credential in the [.env](.env) file.

 ```
    DB_SERVER=mysql 
    DB_PORT=3306 
    DB_NAME=prestashop 
    DB_USER=prestashop 
    DB_PASSWD=prestashop 
    DB_PREFIX=ps_ 
    DB_ROOT_PASSWD=root
    PS_DOMAIN=localhost
    ADMIN_MAIL=admin@prestashop.com 
    ADMIN_PASSWD=admin 
    PS_LANGUAGE=en 
    PS_COUNTRY=GB 
    PS_INSTALL_AUTO=1 # Set 0 if you want to to show install page at the first time access to the website.
    PS_ERASE_DB=1
    PS_DEV_MODE=0 
    PS_HOST_MODE=0 
    PS_HANDLE_DYNAMIC_DOMAIN=0 
    PS_FOLDER_ADMIN=admin 
    PS_FOLDER_INSTALL=install

 ```

4. Start your PrestaShop using `docker-compose up`.


## Licensing

prestashop-docker is licensed under the Apache License, Version 2.0.
See [LICENSE](LICENSE) for the full license text.




