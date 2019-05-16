FROM debian

#téléchargement des ressources nécessaire
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y build-essential
RUN apt-get install -y wget
RUN apt-get install -y openssl
RUN apt-get install -y libxml2-dev
RUN apt-get install -y libncurses5-dev
RUN apt-get install -y uuid-dev
RUN apt-get install -y sqlite3
RUN apt-get install -y libsqlite3-dev
RUN apt-get install -y pkg-config
RUN apt-get install -y libjansson-devÂ
RUN apt-get install -y vim

RUN wget https://downloads.asterisk.org/pub/telephony/asterisk/asterisk-14.4.0.tar.gz
RUN tar -xzf asterisk-14.4.0.tar.gz
WORKDIR /usr/local/src/asterisk-14.4.0

RUN ./configure
RUN make
RUN make install 
RUN make samples

# Copie des fichiers de configuration dans le dossier approprie.
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/users.conf /etc/asterisk/users.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/sip.conf /etc/asterisk/sip.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/extensions.conf /etc/asterisk/extensions.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/voicemail.conf /etc/asterisk/voicemail.conf

VOLUME /etc/asterisk

EXPOSE 5060/udp
EXPOSE 5060/tcp
EXPOSE 4569/udp
EXPOSE 16384-16394/udp

CMD ["asterisk", "-f"]
