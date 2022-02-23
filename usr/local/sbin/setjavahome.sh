  cat /usr/lib/jvm/.*info | grep '^hl java' | sed 's/\/bin\/java//g' | sed 's/hl java /#JAVA_HOME=/g' 
