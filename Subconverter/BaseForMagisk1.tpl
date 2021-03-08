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
    baidu.com: 127.0.0.1
dns:
  enable: true
  listen: 0.0.0.0:1053
  enhanced-mode: redir-host #fake-ip
  fake-ip-range: 198.18.0.1/16
  use-hosts: true
  fake-ip-filter:
  nameserver:
    - 'tls://dh-dns.global-idc.net:853'
    - 'https://dh-dns.global-idc.net/dns-query'
