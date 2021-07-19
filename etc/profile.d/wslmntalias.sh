#!/bin/bash
mount | grep -e drvfs | column -t -s ";" | awk '{print tolower($7) "" $3}' | sed 's/path=/alias /g' | sed 's/:\\/="/g'| awk '{print $0 "\" && "}' > /tmp/alias && source /tmp/alias
rm /tmp/alias

