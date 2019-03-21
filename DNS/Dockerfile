FROM ubuntu:latest
MAINTAINER he201490@students.ephec.be

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y bind9
RUN apt-get install -y dnsutils

WORKDIR /etc/bind

COPY https://github.com/he201525/Projet-Admin-Reseau-/blob/master/DNS/config/db.wt18.ephec-ti.be /etc/bind/

EXPOSE 53 53/udp
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
