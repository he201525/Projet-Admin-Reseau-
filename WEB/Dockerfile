FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y apt-utils
RUN apt-get install -y apache2
RUN apt-get install -y php7.0 
RUN apt-get install -y php7.0-mysql

RUN a2enmod php7.0
RUN a2enmod rewrite
RUN a2ensite apache-config.conf

EXPOSE 80 443

ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/Config/apache-config.conf /etc/apache2/site-available/apache-config.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/www/index.html /var/www/www/index.html
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/intranet/index.html /var/www/intranet/index.html
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/b2b/index.html /var/www/b2b/index.html

CMD /usr/sbin/apache2ctl -D FOREGROUND
