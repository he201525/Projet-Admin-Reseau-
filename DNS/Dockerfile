FROM ubuntu:latest
MAINTAINER he201490@students.ephec.be

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y bind9
RUN apt-get install -y dnsutils

WORKDIR /etc/bind

COPY https://github.com/he201525/Projet-Admin-Reseau-/blob/master/DNS/ /etc/bind/
COPY ./named.conf.options ./named.conf.options
COPY ./named.conf.local ./named.conf.local
COPY ./named.conf.default-zones ./named.conf.default-zones
COPY ./db.wt18.ephec-ti.be ./db.wt18.ephec-ti.be
COPY ./db.internal.wt18.ephec-ti.be ./db.internal.wt18.ephec-ti.be

EXPOSE 53 53/udp
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
