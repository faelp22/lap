# Lap
#
# VERSION               0.2

FROM ubuntu:16.04
MAINTAINER Isael Sousa <faelp22@gmail.com>

# install apache2 and php
RUN apt-get update
RUN apt-get install php php-xml php-mysql php-pgsql php-sqlite3 php-curl apache2 apache2-bin libapache2-mod-php -y
RUN apt-get clean
RUN a2enmod rewrite
RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN adduser --uid 1000 --gecos 'My Apache User' --disabled-password myuser
RUN chmod -R 777 /var/www/html
RUN chown -R 1000:www-data /var/www/html
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# volumes
VOLUME ["/var/www/html"]

EXPOSE 80

#ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

CMD /usr/sbin/apache2ctl -D FOREGROUND
