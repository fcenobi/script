 #!/bin/bash
 vlanlist=$(ssh root@c3750 'show vlan brief' | cut -d ' ' -f1 | grep -v -e 'VLAN\|----')
