# docker-apache
Dockerfile and support files for apache2

To run the container:

$ docker run -d -v -h HOSTNAME.DOMAINNAME ${PWD}/etc/:/etc/apache2/ -v WWWDIR:/var/www/html/ -v /var/log/apache2/:/var/log/apache2/ -v /etc/ssl/private/:/etc/ssl/private/ -v /etc/ssl/certs/:/etc/ssl/certs/ -p 80:80/tcp -p 443:443/tcp IMAGENAME
