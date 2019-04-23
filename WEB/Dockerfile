FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y apt-utils
RUN apt-get install -y apache2
RUN apt-get install -y php7.0 
RUN apt-get install -y php7.0-mysql

EXPOSE 80 443

COPY https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/b2b/b2b.conf /etc/apache2/site-available/b2B.conf
COPY https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/intranet/intranet.conf /etc/apache2/site-available/intranet.conf
COPY https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/www/www.conf /etc/apache2/site-available/www.conf

COPY https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/b2b/site/index.php /var/www/b2b/site/index.php
COPY https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/intranet/site/index.html /var/www/intranet/site/index.html
COPY https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/www/site/index.html /var/www/www/site/index.html

RUN a2enmod php7.0
RUN a2enmod rewrite

RUN a2ensite b2B.conf
RUN a2ensite intranet.conf
RUN a2ensite www.conf

CMD ["apache2ctl", "-D", "FOREGROUND"]]
