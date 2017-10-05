# lap

Simple example of using docker with php and apache2

# Example of how to use

```docker pull faelp22/lap```

Change the path "/home/isael/site" for you local paht

You can also change the name "servidorweb" and port "8080"

```docker run --name servidorweb -p 8080:80 -v /home/isael/site:/var/www/html -d faelp22/lap:latest```

put your files here, do not forget to give the necessary permissions

```
/home/isael/site/
└── index.php permission -rw-r--r-- == 644
```

# In this image you have:

- Ubuntu Server 16.04;
- PHP 7.0.15-0ubuntu0.16.04.4;
- Apache / 2.4.18 (Ubuntu);
- php-xml;
- php-mysql;
- php-pgsql;
- php-sqlite3;
- php-curl;

for more information check the file "Dockerfile"

# To access the container:

```docker exec -it bash webserver```

Have a good time!
