# lap

Simple example of using docker with php and apache2

# Example of how to use

```docker pull faelp22/lap```

Change the path "/home/isael/site" for you local path

You can also change the name "servidorweb" and port "8080"

```docker run --name servidorweb -p 8080:80 -v /home/isael/site:/var/www/html -d faelp22/lap:latest```

put your files here, do not forget to give the necessary permissions

```
/home/isael/site/
└── index.php permission -rw-r--r-- == 644
```

A example to run docker-compose to up a environment: WordPress, PHP 7, MySQL and Apache2.

```
docker-compose up -d
```
See the file docker-compose.yml with a example setting. 

# In this image you have on tag 0.3:
- Ubuntu Server 18.04.x;
- PHP 7.2.x;

# In this image you have on tag 0.2.1:
- Ubuntu Server 16.04.x;
- PHP 7.0.x;

# In this image you have:
- Apache / 2.4.x;
- php-xml;
- php-mysql;
- php-pgsql;
- php-sqlite3;
- php-curl;

for more information check the file "Dockerfile"

# To access the container:

```docker exec -it webserver /bin/bash```

Have a good time!
