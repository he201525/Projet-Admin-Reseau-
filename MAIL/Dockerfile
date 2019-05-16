FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y rsyslog
RUN apt-get install -y postfix
RUN apt-get install -y dovecot-common dovecot-imapd dovecot-pop3d
RUN apt-get install -y mailutils




#SMTP
EXPOSE 25
#unfitlered SMTP
EXPOSE 2525
#this is the default IMAP non-encrypted port
EXPOSE 143
#This is the default mail submission port
EXPOSE 587
#IMAP securely
EXPOSE 993

#CMD ["sh", "-c", service postfix start ; tail -F /var/log/mail.log"]
CMD ["sh", "-c", "/start.sh"]
