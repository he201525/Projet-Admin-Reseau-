FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y asterisk
RUN apt-get install -y vim

ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/extensions.conf /etc/asterisk/extensions.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/sip.conf /etc/asterisk/sip.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/users.conf /etc/asterisk/users.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/voicemail.conf /etc/asterisk/voicemail.conf

VOLUME /etc/asterisk

EXPOSE 5060/udp
EXPOSE 5060/tcp
EXPOSE 4569/udp

CMD ["asterisk", "-f"]
