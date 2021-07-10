{% if request.target == "clash" or request.target == "clashr" %}

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
dns:
  enable: true
  listen: 0.0.0.0:53
  ipv6: true
{% endif %}
{% if request.clash.dns == "tun" %}
ipv6: false
tun:
  enable: true
  stack: system # or gvisor
  dns-hijack:
    - 198.18.0.2:53 # when `fake-ip-range` is 198.18.0.1/16, should hijack 198.18.0.2:53
  macOS-auto-route: true # auto set global route for Windows
  macOS-auto-detect-interface: true # auto detect interface, conflict with `interface-name`
#interface-name: WLAN
hosts:
dns:
  enable: true
  listen: 0.0.0.0:53
  ipv6: false
{% endif %}
{% if request.clash.dns == "cfa" %}
ipv6: false
tun:
  enable: true
  stack: system # or gvisor
hosts:
dns:
  enable: true
  listen: 127.0.0.1:1053
  ipv6: false
{% endif %}
{% else %}
ipv6: true
hosts:
dns:
  enable: true
  listen: 127.0.0.1:1053
  ipv6: true
{% endif %}
  default-nameserver:
    - 119.29.29.29
  enhanced-mode: fake-ip # redir-host
  fake-ip-range: 198.18.0.1/16
  fake-ip-filter:
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
    geoip: true # default
    ipcidr: # ips in these subnets will be considered polluted
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
doh-server = https://9.9.9.9/dns-query
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
