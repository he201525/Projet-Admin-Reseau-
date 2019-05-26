FROM debian

#téléchargement des ressources nécessaire
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y build-essential
RUN apt-get install -y git-core
RUN apt-get install -y subversion
RUN apt-get install -y libjansson-dev
RUN apt-get install -y sqlite
RUN apt-get install -y autoconf 
RUN apt-get install -y automake
RUN apt-get install -y libtool
RUN apt-get install -y libxml2-dev 
RUN apt-get install -y libncurses5-dev 
RUN apt-get install -y libsqlite3-dev 
RUN apt-get install -y libssl-dev
RUN apt-get install -y vim

#On créer un dossier ou nous allons placer les sources d’Asterisk
RUN mkdir /usr/src/asterisk
RUN cd /usr/src/asterisk

#télécharge la derniere version astersk
RUN apt-get install -y wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-16-current.tar.gz
RUN apt-get install -y tar -xvzf asterisk-16-current.tar.gz
RUN apt-get install -y cd asterisk-16.0.1
RUN apt-get install -y ./configure
RUN apt-get install -y make menuselect

RUN make
RUN make install
RUN make samples
RUN make config

ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/extensions.conf /etc/asterisk/extensions.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/sip.conf /etc/asterisk/sip.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/users.conf /etc/asterisk/users.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/voicemail.conf /etc/asterisk/voicemail.conf

VOLUME /etc/asterisk

EXPOSE 5060/udp
EXPOSE 5060/tcp
EXPOSE 4569/udp

CMD ["asterisk", "-f"]
