port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893
allow-lan: true
bind-address: "*"
mode: rule
log-level: silent
external-controller: 127.0.0.1:9090
dns:
  enable: true
  listen: 0.0.0.0:1053
  enhanced-mode: redir-host
  fake-ip-range: 198.18.0.1/16
  use-hosts: true
  fake-ip-filter:
    - '*.lan'
    - localhost.ptlogin2.qq.com
  nameserver:
    - 119.29.29.29
    - 223.5.5.5
    - 114.114.114.114
    - 202.102.128.68
  fallback: 
    - https://dns.cloudflare.com/dns-query
    - https://family.cloudflare-dns.com/dns-query
    - https://dns.google/dns-query
    - https://dh-dns.global-idc.net/dns-query
  fallback-filter:
    geoip: true
    ipcidr:
      - 240.0.0.0/4
    domain:
      - '+.google.com'
      - '+.facebook.com'
      - '+.youtube.com'
tun:
  enable: true
  stack: gvisor # or system
