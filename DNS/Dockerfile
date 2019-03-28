FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y bind9
RUN apt-get install -y dnsutils
RUN apt-get install -y vim 

ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/DNS/config/db.wt18.ephec-ti.be /etc/bind/db.wt18.ephec-ti.be
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/DNS/config/named.conf.local /etc/bind/named.conf.local
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/DNS/config/named.conf.options /etc/bind/named.conf.options
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/DNS/config/named.conf.default-zones /etc/bind/named.conf.default-zones
ADD https://raw.githubusercontent.com/he201525/Projet-Admin-Reseau-/master/DNS/config/named.conf /etc/bind/named.conf

WORKDIR /etc/bind

VOLUME /etc/bind

EXPOSE 53/udp 53/tcp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
