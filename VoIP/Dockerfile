FROM debian

#téléchargement des ressources nécessaire
RUN apt-get update && apt-get upgrade && DEBIAN_FRONTEND=noninteractive
RUN apt-get install build-essential libxml2-dev libncurses5-dev linux-headers-$(uname -r) libsqlite3-dev libssl-dev
RUN apt-get install -y vim

#On créer un dossier ou nous allons placer les sources d’Asterisk
RUN mkdir /usr/src/asterisk

#télécharge la derniere version astersk
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-10.7.0.tar.gz
RUN tar xvzf asterisk-10.7.0.tar.gz
RUN cd asterik-asterisk-10.7.0
RUN ./configure
RUN make menuselect

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
