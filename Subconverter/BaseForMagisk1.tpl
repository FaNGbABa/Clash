port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893
allow-lan: true
bind-address: "*"
mode: rule
log-level: silent
external-controller: 127.0.0.1:9090
external-ui: yacd-gh-pages
hosts:
    smtp.gmail.com: 74.125.20.109
dns:
  enable: true
  listen: 0.0.0.0:1053
  enhanced-mode: redir-host #fake-ip
  fake-ip-range: 198.18.0.1/16
  use-hosts: true
  fake-ip-filter:
    # === LAN ===
    - '*.lan'
    - '*.localdomain'
    - '*.example'
    - '*.invalid'
    - '*.localhost'
    - '*.test'
    - '*.local'
    - '*.home.arpa'
    # === Linksys Wireless Router ===
    - '*.linksys.com'
    - '*.linksyssmartwifi.com'
    # === ASUS Router ===
    - '*.router.asus.com'
    # === Apple Software Update Service ===
    - 'swscan.apple.com'
    - 'mesu.apple.com'
    # === Windows 10 Connnect Detection ===
    - '*.msftconnecttest.com'
    - '*.msftncsi.com'
    - 'msftconnecttest.com'
    - 'msftncsi.com'
    # === Google ===
    - 'lens.l.google.com'
    - 'stun.l.google.com'
    ## Golang
    - 'proxy.golang.org'
    # === NTP Service ===
    - 'time.*.com'
    - 'time.*.gov'
    - 'time.*.edu.cn'
    - 'time.*.apple.com'
    - 'time1.*.com'
    - 'time2.*.com'
    - 'time3.*.com'
    - 'time4.*.com'
    - 'time5.*.com'
    - 'time6.*.com'
    - 'time7.*.com'
    - 'ntp.*.com'
    - 'ntp1.*.com'
    - 'ntp2.*.com'
    - 'ntp3.*.com'
    - 'ntp4.*.com'
    - 'ntp5.*.com'
    - 'ntp6.*.com'
    - 'ntp7.*.com'
    - '*.time.edu.cn'
    - '*.ntp.org.cn'
    - '+.pool.ntp.org'
    - 'time1.cloud.tencent.com'
    # === Game Service ===
    ## Nintendo Switch
    - '+.srv.nintendo.net'
    ## Sony PlayStation
    - '+.stun.playstation.net'
    ## Microsoft Xbox
    - 'xbox.*.microsoft.com'
    - 'xnotify.xboxlive.com'
    # === Other ===
    ## QQ Quick Login
    - 'localhost.ptlogin2.qq.com'
    - 'localhost.sec.qq.com'
    ## STUN Server
    - 'stun.*.*'
    - 'stun.*.*.*'
    - '+.stun.*.*'
    - '+.stun.*.*.*'
    - '+.stun.*.*.*.*'
  nameserver:
    - 'tls://114.114.114.110:53'
    - 'https://rubyfish.cn/dns-query'
  fallback:
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
tun:
  enable: true
  stack: gvisor # or system
#  dns-hijack:
#    - 114.114.114.114:53
