/log info "Loading HM IPv4 Address List"
/ip firewall address-list
:do { add list=HM address=179.64.26.0/23 } on-error={}
