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
tun:
  enable: true
  stack: system # or gvisor
