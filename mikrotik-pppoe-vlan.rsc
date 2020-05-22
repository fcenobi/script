/interface vlan add interface=ether4 name=pppoe vlan-id=1036 disabled=no 
/interface pppoe-client  add name=pppoe-link user=vodafonedsl password=vodafonedsl interface=pppoe 
/interface pppoe-client  set pppoe-link use-peer-dns=yes
/interface pppoe-client  set pppoe-link add-default-route=yes
/interface pppoe-client  set pppoe-link dial-on-demand=no
/interface pppoe-client  set pppoe-link profile=default-encryption
/interface pppoe-client  set pppoe-link disabled=no
/interface pppoe-client  set pppoe-link max-mtu=1492
/ip firewall nat add chain=srcnat out-interface=pppoe-link action=masquerade

