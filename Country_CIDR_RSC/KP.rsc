/log info "Loading KP IPv4 Address List"
/ip firewall address-list
:do { add list=KP address=23.169.169.169/32 } on-error={}
:do { add list=KP address=31.6.16.15/32 } on-error={}
:do { add list=KP address=44.32.192.70/31 } on-error={}
:do { add list=KP address=57.73.214.0/23 } on-error={}
:do { add list=KP address=103.228.98.0/24 } on-error={}
:do { add list=KP address=104.28.25.232/30 } on-error={}
:do { add list=KP address=104.28.25.236/31 } on-error={}
:do { add list=KP address=104.28.25.238/32 } on-error={}
:do { add list=KP address=121.132.21.146/32 } on-error={}
:do { add list=KP address=175.45.176.0/22 } on-error={}
:do { add list=KP address=194.147.16.103/32 } on-error={}
:do { add list=KP address=194.164.173.174/32 } on-error={}
:do { add list=KP address=196.48.114.0/24 } on-error={}
:do { add list=KP address=196.56.114.0/24 } on-error={}
:do { add list=KP address=196.199.114.0/24 } on-error={}
:do { add list=KP address=223.17.11.167/32 } on-error={}
