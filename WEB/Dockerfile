FROM ubuntu:latest

RUN apt update && apt upgrade -y && DEBIAN_FRONTEND=noninteractive apt install -y apache2 php php-mysql vim

#On met les config dans les dossier des sites disponnible
COPY www/www.wt18.ephec-ti.be.conf /etc/apache2/sites-available

#On créé un lien logic entre les config et le dossier sites-enabled
RUN ln -s /etc/apache2/sites-available/www.wt18.ephec-ti.be.conf /etc/apache2/sites-enabled

#On créé le dossier source racine pour notre site
RUN mkdir /var/www/www.wt18.ephec-ti.be

#Copie le fichier html dans le fichier source racine
COPY www/site/index.html /var/www/www.wt18.ephec-ti.be/index.html

EXPOSE 80 443

CMD apachectl -DFOREGROUND
