$TTL    604800
@      IN      SOA     ns1.wt18.ephec-ti.be. root.wt18.ephec-ti.be. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;     
                       
@                          IN      NS      ns1.wt18.ephec-ti.be.
ns1                        IN      A       51.77.245.43

www.wt18.ephec-ti.be.      IN      A       51.77.245.43
b2b.wt18.ephec-ti.be.      IN      A       51.77.245.43
intranet.wt18.ephec-ti.be. IN      A       51.77.245.43

wt18.ephec-ti.be.          IN     MX   5   mail.wt18.ephec-ti.be.
mail.wt18.ephec-ti.be.     IN      A       51.77.245.43

voip                       IN      A       51.77.245.43

_sip._udp                  IN      SRV 0 0 5060 voip
