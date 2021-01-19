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
  fake-ip-range: 198.18.0.1/16
  enhanced-mode: fake-ip
  fake-ip-filter:
    - '*.lan'
    - 'stun.*.*'
    - 'stun.*.*.*'
    - 'stun.*.*.*.*'
  nameserver:
    - 1.2.4.8
    - 119.29.29.29
    - 223.5.5.5
    - 1.1.1.1
    - 8.8.8.8
clash-for-android:
  append-system-dns: true
tun:
  enable: true
  stack: system # or gvisor
  dns-hijack:
    - 198.18.0.1/.*
    - 1.1.1.1
    - 119.29.29.29
