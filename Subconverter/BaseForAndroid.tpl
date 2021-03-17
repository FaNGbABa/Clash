port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893
allow-lan: true
mode: rule
log-level: silent
external-controller: 127.0.0.1:9090
hosts:
   '*.clash.dev': 127.0.0.1 
   'alpha.clash.dev': ::1
   'smtp.gmail.com': 74.125.20.109
dns:
  enable: true
  listen: 0.0.0.0:1053
  default-nameserver:          
    - 114.114.114.114
    - 8.8.8.8
  enhanced-mode: fake-ip #redir-host
  fake-ip-range: 198.18.0.1/16
  use-hosts: true
  fake-ip-filter:
    - '*.lan'
    - localhost.ptlogin2.qq.com
    - '*.*.*.*.srv.nintendo.net'
    - '*.*.*.stun.playstation.net'
    - 'xbox.*.microsoft.com'
    - '*.*.*.xboxlive.com'
  nameserver:
     - 'https://dns-unfiltered.adguard.com/dns-query'
#    - 'https://dh-dns.global-idc.net/dns-query'
#    - 'tls://vdpiya.d.rubyfish.cn:853'
  fallback:
    - 'https://dns-unfiltered.adguard.com/dns-query'
#    - 'https://dh-dns.global-idc.net/dns-query'
#    - 'https://dns.google/dns-query'
  fallback-filter:
    geoip: true
    ipcidr:
      - 240.0.0.0/4
tun:
  enable: true
  stack: gvisor
  dns-hijack:
    - 198.18.0.2:53

