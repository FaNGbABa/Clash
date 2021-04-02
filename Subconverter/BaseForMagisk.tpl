redir-port: 7892
mixed-port: 2937
allow-lan: true
bind-address: "*"
mode: rule
log-level: silent
external-controller: 127.0.0.1:9090
external-ui: yacd-gh-pages
hosts:
   '*.clash.dev': 127.0.0.1 
   'alpha.clash.dev': ::1
   'smtp.gmail.com': 74.125.20.109
   'dh-dns.global-idc.net': 162.14.132.76
dns:
  enable: true
  listen: 0.0.0.0:1053
  enhanced-mode: fake-ip #redir-host
  fake-ip-range: 198.18.0.1/16
  use-hosts: true
  fake-ip-filter:
    - '*.lan'
    - 'time.windows.com'
    - 'time.nist.gov'
    - 'time.apple.com'
    - 'time.asia.apple.com'
    - '*.ntp.org.cn'
    - '*.openwrt.pool.ntp.org'
    - 'time1.cloud.tencent.com'
    - 'time.ustc.edu.cn'
    - 'pool.ntp.org'
    - 'ntp.ubuntu.com'
    - 'ntp.aliyun.com'
    - 'ntp1.aliyun.com'
    - 'ntp2.aliyun.com'
    - 'ntp3.aliyun.com'
    - 'ntp4.aliyun.com'
    - 'ntp5.aliyun.com'
    - 'ntp6.aliyun.com'
    - 'ntp7.aliyun.com'
    - 'time1.aliyun.com'
    - 'time2.aliyun.com'
    - 'time3.aliyun.com'
    - 'time4.aliyun.com'
    - 'time5.aliyun.com'
    - 'time6.aliyun.com'
    - 'time7.aliyun.com'
    - '*.time.edu.cn'
    - 'time1.apple.com'
    - 'time2.apple.com'
    - 'time3.apple.com'
    - 'time4.apple.com'
    - 'time5.apple.com'
    - 'time6.apple.com'
    - 'time7.apple.com'
    - 'time1.google.com'
    - 'time2.google.com'
    - 'time3.google.com'
    - 'time4.google.com'
    - 'music.163.com'
    - '*.music.163.com'
    - '*.126.net'
    - 'musicapi.taihe.com'
    - 'music.taihe.com'
    - 'songsearch.kugou.com'
    - 'trackercdn.kugou.com'
    - '*.kuwo.cn'
    - 'api-jooxtt.sanook.com'
    - 'api.joox.com'
    - 'joox.com'
    - 'y.qq.com'
    - '*.y.qq.com'
    - 'streamoc.music.tc.qq.com'
    - 'mobileoc.music.tc.qq.com'
    - 'isure.stream.qqmusic.qq.com'
    - 'dl.stream.qqmusic.qq.com'
    - 'aqqmusic.tc.qq.com'
    - 'amobile.music.tc.qq.com'
    - '*.xiami.com'
    - '*.music.migu.cn'
    - 'music.migu.cn'
    - '*.msftconnecttest.com'
    - '*.msftncsi.com'
    - 'localhost.ptlogin2.qq.com'
    - '*.*.*.srv.nintendo.net'
    - '*.*.stun.playstation.net'
    - 'xbox.*.*.microsoft.com'
    - '*.*.xboxlive.com'
  nameserver:
    - 'tls://dh-dns.global-idc.net:853'
    - 'https://dh-dns.global-idc.net/dns-query'
  fallback:
    - 'tls://dh-dns.global-idc.net:853'
    - 'https://dh-dns.global-idc.net/dns-query'
  fallback-filter:
    geoip: true
    ipcidr:
      - 0.0.0.0/8
      - 10.0.0.0/8
      - 100.64.0.0/10
      - 127.0.0.0/8
      - 169.254.0.0/16
      - 172.16.0.0/12
      - 192.0.0.0/24
      - 192.0.2.0/24
      - 192.88.99.0/24
      - 192.168.0.0/16
      - 198.18.0.0/15
      - 198.51.100.0/24
      - 203.0.113.0/24
      - 224.0.0.0/4
      - 240.0.0.0/4
      - 255.255.255.255/32
tun:
  enable: true
  stack: gvisor # or system
  dns-hijack:
    - 162.14.132.76
