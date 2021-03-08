port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893
allow-lan: true
mode: rule
log-level: silent
external-controller: 127.0.0.1:9090
hosts:
    smtp.gmail.com: 74.125.20.109
dns:
  enable: true
  listen: 0.0.0.0:1053
  enhanced-mode: redir-host #fake-ip
  fake-ip-range: 198.18.0.1/16
  use-hosts: true
  fake-ip-filter:
  nameserver:
    - 'tls://114.114.114.114:853'
    - 'tls://dot.pub:853'
    - 'tls://dns.alidns.com:853'
    - 'tls://117.50.11.11:853'
  fallback:
    - 'tls://vdpiya.d.rubyfish.cn:853'
    - 'https://cloudflare-dns.com/dns-query'
    - 'https://dns.google/dns-query'
    - 'https://doh.opendns.com/dns-query'
  fallback-filter:
    geoip: true
    ipcidr:
      - 240.0.0.0/4
    domain:
      - '+.google.com'
      - '+.facebook.com'
      - '+.youtube.com'
      - '+.tiktokv.com'
      - '+.byteoversea.com'
      - '+.tik-tokapi.com'
      - '+.musical.ly'
