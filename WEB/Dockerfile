FROM ubuntu:latest

RUN apt-get update && apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive 
RUN apt-get -y install apache2 php7.0 php7.0-mysql libapache2-mod-php7.0 curl lynx-cur

EXPOSE 80 443

ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/b2b/b2b.conf /etc/apache2/site-available/b2B.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/intranet/intranet.conf /etc/apache2/site-available/intranet.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/www/www.conf /etc/apache2/site-available/www.conf

ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/b2b/site/index.php /var/www/b2b/site/index.php
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/intranet/site/index.html /var/www/intranet/site/index.html
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/www/site/index.html /var/www/www/site/index.html

RUN a2enmod php7.0
RUN a2enmod rewrite

RUN a2ensite b2B.conf
RUN a2ensite intranet.conf
RUN a2ensite www.conf

CMD ["apache2ctl", "-D", "FOREGROUND"]]
