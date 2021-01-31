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
  fake-ip-filter:
  nameserver:
    - https://doh.pub/dns-query
    - https://dns.alidns.com/dns-query
    - https://dh-dns.global-idc.net/dns-query
    - 114.114.114.114
    - 123.125.81.6
    - 202.102.128.68
    - 202.102.134.68
tun:
  enable: true
  stack: system # or gvisor
  dns-hijack:
    - https://doh.pub/dns-query
    - https://dns.alidns.com/dns-query
