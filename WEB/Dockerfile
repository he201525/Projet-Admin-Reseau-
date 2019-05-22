FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y upgrade 
RUN apt-get install -y apache2 
RUN apt-get install -y php7.0 
RUN apt-get install -y php7.0-mysql 
RUN apt-get install -y libapache2-mod-php
RUN apt-get install -y curl 

ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/b2b/b2b.w18.ephec-ti.be.conf /etc/apache2/sites-available/b2b.w18.ephec-ti.be.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/intranet/intranet.w18.ephec-ti.be.conf /etc/apache2/sites-available/intranet.w18.ephec-ti.be.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/www/www.w18.ephec-ti.be.conf /etc/apache2/sites-available/www.w18.ephec-ti.be.conf

ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/b2b/site/index.php /var/www/b2b/html/index.php
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/intranet/site/index.html /var/www/intranet/html/index.html
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/www/site/index.html /var/www/www/html/index.html

RUN a2enmod php7.0
RUN a2enmod rewrite

RUN ln -s /etc/apache2/sites-available/b2b.w18.ephec-ti.be.conf /etc/apache2/sites-enabled/
RUN ln -s /etc/apache2/sites-available/intranet.w18.ephec-ti.be.conf /etc/apache2/sites-enabled/
RUN ln -s /etc/apache2/sites-available/www.w18.ephec-ti.be.conf /etc/apache2/sites-enabled/

EXPOSE 80 443

CMD ["apache2ctl", "-D", "FOREGROUND"]]
