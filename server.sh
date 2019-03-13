#!/bin/bash

docker-compose up -d
docker exec -it php_web_server cp /var/www/html/laravel_v-host.conf /etc/apache2/sites-available/000-default.conf
docker exec -it php_web_server bash -c "sed -i -- 's/APACHE_RUN_USER=www-data/APACHE_RUN_USER=dev/g' /etc/apache2/envvars"
# docker exec -it php_web_server bash -c "sed -i -- 's/APACHE_RUN_GROUP=www-data/APACHE_RUN_GROUP=dev/g' /etc/apache2/envvars"
# docker exec -it php_web_server bash -c "sed -i -- 's/upload_max_filesize = 2M/upload_max_filesize = 8M/g' /etc/php/7.2/apache2/php.ini"
# docker exec -it php_web_server bash -c "sed -i -- 's/post_max_size = 8M/post_max_size = 10M/g' /etc/php/7.2/apache2/php.ini"
docker exec -it php_web_server service apache2 stop
docker start php_web_server

# find . -type f -exec chmod 644 {} \;
# find . -type d -exec chmod 755 {} \;
# chown dev:www-data -R *
