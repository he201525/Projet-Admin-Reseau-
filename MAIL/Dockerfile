FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y opendkim 
RUN apt-get install -y opendkim-tools 
RUN apt-get install -y rsyslog
RUN apt-get install -y postfix
RUN apt-get install -y spamassassin
RUN apt-get install -y dovecot-common 
RUN apt-get install -y dovecot-imapd 
RUN apt-get install -y dovecot-pop3d
RUN apt-get install -y mailutils

# Configures Dovecot
COPY target/dovecot/auth-passwdfile.inc target/dovecot/??-*.conf /etc/dovecot/conf.d/
RUN sed -i -e 's/include_try \/usr\/share\/dovecot\/protocols\.d/include_try \/etc\/dovecot\/protocols\.d/g' /etc/dovecot/dovecot.conf && \
  sed -i -e 's/#mail_plugins = \$mail_plugins/mail_plugins = \$mail_plugins sieve/g' /etc/dovecot/conf.d/15-lda.conf && \
  sed -i -e 's/^.*lda_mailbox_autocreate.*/lda_mailbox_autocreate = yes/g' /etc/dovecot/conf.d/15-lda.conf && \
  sed -i -e 's/^.*lda_mailbox_autosubscribe.*/lda_mailbox_autosubscribe = yes/g' /etc/dovecot/conf.d/15-lda.conf && \
  sed -i -e 's/^.*postmaster_address.*/postmaster_address = '${POSTMASTER_ADDRESS:="postmaster@domain.com"}'/g' /etc/dovecot/conf.d/15-lda.conf && \
  sed -i 's/#imap_idle_notify_interval = 2 mins/imap_idle_notify_interval = 29 mins/' /etc/dovecot/conf.d/20-imap.conf && \
  # stretch-backport of dovecot needs this folder
  mkdir /etc/dovecot/ssl && \
  chmod 755 /etc/dovecot/ssl  && \
  cd /usr/share/dovecot && \
  ./mkcert.sh  && \
  mkdir -p /usr/lib/dovecot/sieve-pipe /usr/lib/dovecot/sieve-filter /usr/lib/dovecot/sieve-global && \
  chmod 755 -R /usr/lib/dovecot/sieve-pipe /usr/lib/dovecot/sieve-filter /usr/lib/dovecot/sieve-global
  
# Enables Spamassassin CRON updates and update hook for supervisor
RUN sed -i -r 's/^(CRON)=0/\1=1/g' /etc/default/spamassassin && \
    sed -i -r 's/^\$INIT restart/supervisorctl restart amavis/g' /etc/spamassassin/sa-update-hooks.d/amavisd-new

# Configure DKIM (opendkim)
# DKIM config files
COPY target/opendkim/opendkim.conf /etc/opendkim.conf
COPY target/opendkim/default-opendkim /etc/default/opendkim

# Configures Postfix
COPY target/postfix/main.cf target/postfix/master.cf /etc/postfix/
COPY target/postfix/header_checks.pcre target/postfix/sender_header_filter.pcre target/postfix/sender_login_maps.pcre /etc/postfix/maps/
RUN echo "" > /etc/aliases && \
  openssl dhparam -out /etc/postfix/dhparams.pem 2048 && \
  echo "@weekly FILE=`mktemp` ; openssl dhparam -out $FILE 2048 > /dev/null 2>&1 && mv -f $FILE /etc/postfix/dhparams.pem" > /etc/cron.d/dh2048



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
