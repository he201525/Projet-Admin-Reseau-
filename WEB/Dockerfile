FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y upgrade 
RUN apt-get install -y apache2 
RUN apt-get install -y php7.0 
RUN apt-get install -y php-mysql 
RUN apt-get install -y libapache2-mod-php
RUN apt-get install -y curl 

ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/b2b/b2b.conf /etc/apache2/site-available/b2B.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/intranet/intranet.conf /etc/apache2/site-available/intranet.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/www/www.conf /etc/apache2/site-available/www.conf

ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/b2b/site/index.php /var/www/b2b/site/index.php
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/intranet/site/index.html /var/www/intranet/site/index.html
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/www/site/index.html /var/www/www/site/index.html

RUN a2enmod php7.0
RUN a2enmod rewrite

EXPOSE 80 443

CMD ["apache2ctl", "-D", "FOREGROUND"]]
