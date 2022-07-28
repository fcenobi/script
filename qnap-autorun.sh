 #!/bin/sh
 
 addscript=$(cat $1) 
 mount -t ext2 /dev/sdx6 /tmp/config
 echo "### start add on $(date) #########################" >>  /tmp/config/autorun.sh 
 
 echo "$addscript" >>  /tmp/config/autorun.sh 
 
 echo "###   end add on $(date) #########################" >>  /tmp/config/autorun.sh 
 
 
 
