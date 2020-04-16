$TTL    604800
@       IN      SOA     ns1.codex-black.ninja. admin.codex-black.ninja. (
                  3     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
     IN      NS      ns1.codex-black.ninja.
     IN      NS      ns2.codex-black.ninja.

; name servers - A records
ns1.codex-black.ninja.          IN      A       10.108.0.5
ns2.codex-black.ninja.          IN      A       10.108.0.2

; 10.1088.0.0/16 - A records
host1.codex-black.ninja.        IN      A      10.108.0.3
host2.codex-black.ninja.        IN      A      10.108.0.4
