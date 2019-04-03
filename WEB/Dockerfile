FROM ubuntu:latest

MAINTAINER he201632@students.ephec.be

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y apt-utils
RUN apt-get install -y apache2
RUN apt-get install -y php7.0 
RUN apt-get install -y php7.0-mysql

RUN a2enmod php5
RUN a2enmod rewrite

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

EXPOSE 80

ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/Config/apache-config.conf /etc/apache2/apache-config.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/www/index.html /etc/apache2/www/
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/intranet/index.html /etc/apache2/intranet/
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/WEB/b2b/index.html /etc/apache2/b2b/

CMD ["apache2ctl", "-D", "FOREGROUND"]]
