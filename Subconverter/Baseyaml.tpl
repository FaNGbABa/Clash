port: 7890
socks-port: 7891
redir-port: 7892
allow-lan: true
bind-address: "*"
mode: rule
log-level: info
ipv6: false
external-controller: 127.0.0.1:6170
#hosts:
#   "smtp.gmail.com": 74.125.20.109
#   "mtalk.google.com": 108.177.125.188
#   "*.clash.dev": 127.0.0.1
#   ".dev": 127.0.0.1
#   "alpha.clash.dev": "::1"
dns:
  enable: true
  listen: 0.0.0.0:5450
  enhanced-mode: fake-ip # or fake-ip
  fake-ip-range: 198.18.0.1/16 # Fake IP addresses pool CIDR
#  use-hosts: true # lookup hosts and return IP record
  fake-ip-filter:
    - "*.lan"
    - "localhost.ptlogin2.qq.com"
    - "stun.*.*"
    - "stun.*.*.*"
    - "stun.*.*.*.*"
    - "dns.msftncsi.com"
    - "www.msftncsi.com"
    - "www.msftconnecttest.com"
  nameserver:
    - 117.50.11.11
    - 52.80.66.66
    - 1.2.4.8
    - 119.29.29.29
  fallback:
    - "tls://1.1.1.1:853"
    - "tls://1.0.0.1:853"
    - "tls://dns.google:853"
    - "tcp://8.8.8.8"
  fallback-filter:
    geoip: true
    ipcidr:
      - 240.0.0.0/4
    domain:
      - "+.google.com"
      - "+.facebook.com"
      - "+.youtube.com"
      - "+.instagram.com"
      - "+.pornhub.com"
