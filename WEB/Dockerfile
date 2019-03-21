FROM ubuntu:latest

MAINTAINER he201632@students.ephec.be

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y apt-utils
RUN apt-get install -y apache2

RUN a2enmod rewrite

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

EXPOSE 80

ADD https://github.com/he201525/Projet-Admin-Reseau-/tree/master/WEB /etc/apache2/

CMD ["apache2ctl", "-D", "FOREGROUND"]]
