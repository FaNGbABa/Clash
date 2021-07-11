{% if request.target == "clash" %}

mixed-port: {{ local.clash.mixed_port }}
redir-port: {{ local.clash.redir_port}}
allow-lan: {{ local.clash.allow_lan }}
bind-address: '*'
mode: rule
log-level: {{ local.clash.log_level }}
external-controller: {{ local.clash.api_port}}
secret: ''
{% if exists("request.clash.dns") %}
{% if request.clash.dns == "tap" %}
ipv6: true
#interface-name: WLAN
hosts:
   '*.clash.dev': 127.0.0.1 
   'alpha.clash.dev': ::1
dns:
  enable: true
  listen: 0.0.0.0:53
  ipv6: false
{% endif %}
{% if request.clash.dns == "tun" %}
ipv6: false
tun:
  enable: true
  stack: system
  dns-hijack:
    - 198.18.0.2:53
  auto-route: true
  auto-detect-interface: true
hosts:
   '*.clash.dev': 127.0.0.1 
   'alpha.clash.dev': ::1
dns:
  enable: true
  listen: 0.0.0.0:53
  ipv6: false
{% endif %}
{% if request.clash.dns == "cfa" %}
ipv6: false
tun:
  enable: true
  stack: system
hosts:
   '*.clash.dev': 127.0.0.1 
   'alpha.clash.dev': ::1
dns:
  enable: true
  listen: 127.0.0.1:1053
  ipv6: false
{% endif %}
{% else %}
ipv6: true
hosts:
   '*.clash.dev': 127.0.0.1 
   'alpha.clash.dev': ::1
dns:
  enable: true
  listen: 127.0.0.1:1053
  ipv6: false
{% endif %}
  default-nameserver:
    - 119.29.29.29
  enhanced-mode: fake-ip
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
    - 223.5.5.5
    - 119.29.29.29
  fallback:
    - https://doh.dns.sb/dns-query
  fallback-filter:
    geoip: true
    ipcidr: 
      - 0.0.0.0/32
      - 100.64.0.0/10
      - 127.0.0.0/8
      - 240.0.0.0/4
      - 255.255.255.255/32

{% endif %}
{% if request.target == "surge" %}

[General]
ipv6 = false
loglevel = notify
http-listen = 8829
socks5-listen = 8828
allow-wifi-access = true
wifi-access-http-port = 8838
wifi-access-socks5-port = 8839
external-controller-access = 6170@0.0.0.0:6155
dns-server = 119.29.29.29, 223.5.5.5
doh-server = https://223.5.5.5/dns-query
hijack-dns = 8.8.8.8:53
always-real-ip = *.lan, *.localdomain, *.example, *.invalid, *.localhost, *.test, *.local, *.home.arpa, *.linksys.com, *.linksyssmartwifi.com, *.router.asus.com, swscan.apple.com, mesu.apple.com, *.msftconnecttest.com, *.msftncsi.com, msftconnecttest.com, msftncsi.com, lens.l.google.com, stun.l.google.com, proxy.golang.org, time.*.com, time.*.gov, time.*.edu.cn, time.*.apple.com, time1.*.com, time2.*.com, time3.*.com, time4.*.com, time5.*.com, time6.*.com, time7.*.com, ntp.*.com, ntp1.*.com, ntp2.*.com, ntp3.*.com, ntp4.*.com, ntp5.*.com, ntp6.*.com, ntp7.*.com, *.time.edu.cn, *.ntp.org.cn, *.pool.ntp.org, time1.cloud.tencent.com, *.srv.nintendo.net, *.stun.playstation.net, xbox.*.microsoft.com, xnotify.xboxlive.com, localhost.ptlogin2.qq.com, localhost.sec.qq.com, stun.*.*, stun.*.*.*, *.stun.*.*, *.stun.*.*.*, *.stun.*.*.*.*
tun-excluded-routes = 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12
tun-included-routes = 192.168.1.12/32
tls-provider = openssl
exclude-simple-hostnames = true
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local
force-http-engine-hosts = 122.14.246.33, 175.102.178.52, mobile-api2011.elong.com
internet-test-url = http://cp.cloudflare.com
proxy-test-url = http://cp.cloudflare.com
test-timeout = 3

[Replica]
hide-apple-request=1
hide-crashlytics-request=1
hide-udp=0
keyword-filter-type=(null)
keyword-filter=(null)

[Proxy]

[Proxy Group]

[Rule]

[URL Rewrite]
^http:\/\/www\.google\.cn https://www.google.com 302

[Header Rewrite]

[MITM]

[Script]

{% endif %}
