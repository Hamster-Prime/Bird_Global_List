/log info "Loading UM IPv4 Address List"
/ip firewall address-list
:do { add list=UM address=104.28.13.151/32 } on-error={}
:do { add list=UM address=104.28.13.152/31 } on-error={}
:do { add list=UM address=136.23.10.197/32 } on-error={}
:do { add list=UM address=136.23.21.21/32 } on-error={}
:do { add list=UM address=140.248.56.231/32 } on-error={}
:do { add list=UM address=140.248.57.231/32 } on-error={}
:do { add list=UM address=140.248.58.231/32 } on-error={}
:do { add list=UM address=140.248.59.231/32 } on-error={}
:do { add list=UM address=140.248.60.231/32 } on-error={}
:do { add list=UM address=140.248.61.231/32 } on-error={}
:do { add list=UM address=140.248.62.231/32 } on-error={}
:do { add list=UM address=140.248.63.231/32 } on-error={}
:do { add list=UM address=162.120.214.16/32 } on-error={}
:do { add list=UM address=162.120.216.178/32 } on-error={}
