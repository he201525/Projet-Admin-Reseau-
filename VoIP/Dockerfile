FROM ubuntu:16.04
MAINTAINER he201490@students.ephec.be

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y git gcc cpp libxml2 sqlite xinetd tar make bzip2 gettext

WORKDIR /tmp
# pjproject is needed to run asterisk 13
RUN git clone -b pjproject-2.4.5 --depth 1 https://github.com/asterisk/pjproject.git

# Build the project
WORKDIR /tmp/pjproject
RUN ./configure --prefix=/usr --enable-shared --disable-sound --disable-resample --disable-video --disable-opencore-amr 1> /dev/null
RUN make dep 1> /dev/null

# Reload cnfig
RUN ldconfig

ENV AUTOBUILD_UNIXTIME 123124
WORKDIR /tmp

# Telechargement d asterisk.
RUN git clone -b certified/13.8 --depth 1 https://gerrit.asterisk.org/asterisk
WORKDIR /tmp/asterisk

# Copie des fichiers de configuration dans le dossier approprie.
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/users.conf /etc/asterisk/users.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/sip.conf /etc/asterisk/sip.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/extensions.conf /etc/asterisk/extensions.conf
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/VoIP/config/voicemail.conf /etc/asterisk/voicemail.conf

EXPOSE 5060/udp
EXPOSE 5060/tcp

CMD asterisk -f
