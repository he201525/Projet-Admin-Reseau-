FROM ubuntu:latest

RUN apt-get update && apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get -y install \
apache2 php7.0 php7.0-mysql libapache2-mod-php7.0 curl lynx-cur

RUN a2enmod php7.0
RUN a2enmod rewrite
RUN a2ensite apache-config.conf

EXPOSE 80 443

ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/Config/apache-config.conf /etc/apache2/site-available/apache-config.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/www/index.html /var/www/www/index.html
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/intranet/index.html /var/www/intranet/index.html
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/b2b/index.html /var/www/b2b/index.html

CMD /usr/sbin/apache2ctl -D FOREGROUND
