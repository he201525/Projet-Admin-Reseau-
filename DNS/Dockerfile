FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y bind9
RUN apt-get install -y dnsutils
RUN apt-get install -y vim 

ADD https://github.com/he201525/Projet-Admin-Reseau-/tree/master/DNS/config/db.wt18.ephec-ti.be /etc/bind/
ADD https://github.com/he201525/Projet-Admin-Reseau-/tree/master/DNS/config/named.conf.local /etc/bind/

WORKDIR /etc/bind

VOLUME /etc/bind

EXPOSE 53 53/udp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
