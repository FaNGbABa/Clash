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
  default-nameserver:
    - 119.29.29.29
    - 1.1.1.1
  enhanced-mode: fake-ip
  fake-ip-filter:
    - '*.lan'
    - 'stun.*.*'
    - 'stun.*.*.*'
    - 'stun.*.*.*.*'
  nameserver:
    - 223.6.6.6
    - 1.2.4.8
    - 119.29.29.29
    - 'https://dh-dns.global-idc.net/dns-query'
  fallback:
    - 'https://cloudflare-dns.com/dns-query'
    - 'https://dns.rubyfish.cn/dns-query'
    - 'https://dns.google/dns-query'
    - 'https://1.1.1.1/dns-query'
  fallback-filter:
    geoip: true
    ipcidr:
      - 240.0.0.0/4
    domain:
      - '+.google.com'
      - '+.facebook.com'
      - '+.youtube.com'
      - '+.instagram.com'
      - '+.pornhub.com'
tun:
  enable: true
  stack: system # or gvisor
  dns-hijack:
    - 8.8.8.8
    - 1.0.0.1
