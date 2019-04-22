FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y apt-utils
RUN apt-get install -y apache2
RUN apt-get install -y php7.0 
RUN apt-get install -y php7.0-mysql

RUN a2enmod php7.0
RUN a2enmod rewrite
RUN a2ensite apache-config.conf

EXPOSE 80 443

COPY

CMD ["apache2ctl", "-D", "FOREGROUND"]]
