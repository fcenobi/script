JAVA_HOMES=$(cat /usr/lib/jvm/.*info | grep '^hl java' | sed 's/\/bin\/java//g' | sed 's/hl java /JAVA_HOME=/g' )
for i in $JAVA_HOMES ; do echo export $i ;done
echo 'export PATH=$JAVA_HOME/bin:$PATH' 
