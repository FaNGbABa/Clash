port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893
allow-lan: true
bind-address: "*"
mode: rule
log-level: silent
external-controller: 127.0.0.1:9090
hosts:
    smtp.gmail.com: 74.125.20.109
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
    - 'https://dh-dns.global-idc.net/dns-query'
    - 'tls://dh-dns.global-idc.net:853'
tun:
  enable: true
  stack: gvisor # or system
  dns-hijack:
    - 'https://dh-dns.global-idc.net/dns-query'
    - 'tls://dh-dns.global-idc.net:853'
