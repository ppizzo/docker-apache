FROM ppizzo/armhf-jessie

MAINTAINER pietro.pizzo@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y apache2 libapache2-mod-php5 && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /usr/share/doc* /usr/share/man/* /usr/share/info/* && \
    a2enmod php5 && a2enmod rewrite && a2enmod auth_basic && a2enmod ssl && a2enmod proxy && a2enmod proxy_http && \
    a2ensite default-ssl

EXPOSE 80
EXPOSE 443

CMD ["apache2ctl", "-D", "FOREGROUND"]
