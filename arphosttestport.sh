port=$1
for i in $(arp -a | cut -d ' ' -f2 | tr -d '()');  do ( ( echo >/dev/tcp/$i/$1) >/dev/null 2>&1  &&  echo $i || echo "" ) ;done
