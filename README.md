# docker-apache
Dockerfile and support files for apache2

To run the container:

$ docker run -d -v ${PWD}/etc/:/etc/apache2/ -v WWWDIR:/var/lib/www/html/ -p 80:80 -p 443:443 apache
