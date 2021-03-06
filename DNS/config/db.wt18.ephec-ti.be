$TTL    604800

$ORIGIN wt18.ephec-ti.be.
@      IN      SOA     ns1.wt18.ephec-ti.be. root.wt18.ephec-ti.be. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;     
                       
@         IN      NS      ns1.wt18.ephec-ti.be.
ns1                        IN      A       51.77.245.41

www.wt18.ephec-ti.be.      IN      A       51.77.245.41
b2b.wt18.ephec-ti.be.      IN      A       51.77.245.41
intranet.wt18.ephec-ti.be. IN      A       51.77.245.41

mail		                   IN	     A	     51.77.245.41
@		                       IN	     MX	 10	 mail
smtp		                   IN	     CNAME	 mail
pop3		                   IN	     CNAME	 mail
imap		                   IN	     CNAME	 mail

_sip._udp                  IN      SRV     0      0      5060 sip
sip                        IN      A       51.77.245.41
