/log info "Loading KP IPv4 Address List"
/ip firewall address-list
:do { add list=KP address=5.62.56.160/31 } on-error={}
:do { add list=KP address=5.62.56.162/32 } on-error={}
:do { add list=KP address=57.73.214.0/23 } on-error={}
:do { add list=KP address=103.228.98.0/24 } on-error={}
:do { add list=KP address=104.28.25.232/30 } on-error={}
:do { add list=KP address=104.28.25.236/31 } on-error={}
:do { add list=KP address=104.28.25.238/32 } on-error={}
:do { add list=KP address=175.45.176.0/22 } on-error={}
