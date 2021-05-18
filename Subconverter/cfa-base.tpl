port: 8899
socks-port: 8898
# redir-port: 8897
# tproxy-port: 8896
mixed-port: 8888
ipv6: true
allow-lan: true
mode: rule
log-level: debug
external-controller: 127.0.0.1:9090
experimental:
  ignore-resolve-fail: true
hosts:
   '*.clash.dev': 127.0.0.1 
   'alpha.clash.dev': ::1
profile:
  store-selected: false
dns:
  enable: true
  ipv6: true
  listen: 127.0.0.1:5450
  enhanced-mode:  fake-ip #redir-host
  fake-ip-range: 198.18.0.1/16
  use-hosts: true
  fake-ip-filter:
    - '*.lan'
    - '*.localdomain'
    - '*.example'
    - '*.invalid'
    - '*.localhost'
    - '*.test'
    - '*.local'
    - '*.home.arpa'
    - '*.linksys.com'
    - '*.linksyssmartwifi.com'
    - '*.router.asus.com'
    - 'swscan.apple.com'
    - 'mesu.apple.com'
    - '*.msftconnecttest.com'
    - '*.msftncsi.com'
    - 'msftconnecttest.com'
    - 'msftncsi.com'
    - 'lens.l.google.com'
    - 'stun.l.google.com'
    - 'proxy.golang.org'
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
    - 'ntp.*.cn'
    - 'ntp1.*.com'
    - 'ntp2.*.com'
    - 'ntp3.*.com'
    - 'ntp4.*.com'
    - 'ntp5.*.com'
    - 'ntp6.*.com'
    - 'ntp7.*.com'
    - '*.time.edu.cn'
    - '*.ntp.org.cn'
    - '+.ntp.org'
    - '+.pool.ntp.org'
    - 'time1.cloud.tencent.com'
    - 'time2.cloud.tencent.com'
    - 'time3.cloud.tencent.com'
    - 'time4.cloud.tencent.com'
    - 'time5.cloud.tencent.com'
    - 'ntp.bupt.edu.cn'
    - 'ntp.tuna.tsinghua.edu.cn'   
    - '+.srv.nintendo.net'
    - '+.stun.playstation.net'
    - 'xbox.*.microsoft.com'
    - 'xnotify.xboxlive.com'
    - 'localhost.ptlogin2.qq.com'
    - 'localhost.sec.qq.com'
    - 'stun.*.*'
    - 'stun.*.*.*'
    - '+.stun.*.*'
    - '+.stun.*.*.*'
    - '+.stun.*.*.*.*'
  nameserver:
    - 114.114.114.110                                            # 114公共DNS家庭版  
    - 117.50.60.30                                               # OneDNS家庭版
    - 1.1.8.9                                                    # 牙木网络（电信）公共DNS
    - 'https://dh-dns.global-idc.net/dns-query'                  # DH-DNS
tun:
  enable: true
  stack: system # or gvisor

rule-providers:

  PT:
    type: http
    behavior: classical
    url: https://ghproxy.com/https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/PrivateTracker/PrivateTracker.yaml
    path: ./providers/rule-providers/PT.yaml
    interval: 43200
