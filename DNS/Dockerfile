FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y bind9
RUN apt-get install -y dnsutils
RUN apt-get install -y vim 

WORKDIR /etc/bind

VOLUME /etc/bind

EXPOSE 53 53/udp
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
