# > /dev/null  to stdout (no output)
# 1> /dev/null to stdout (no output)
# 2> /dev/null to stderr (no output errot )
# &> /dev/null stdout and  stderr  no output
 
 
 
 function montapart  { for p in $(lsblk -l | grep -e "part $"    | cut -d ' ' -f1) ; do  [ ! -d $p ] &&   mkdir /mnt/$p &> /dev/null ; mount /dev/$p /mnt/$p &> /dev/null ; done }
 function smontapart { for p in $(lsblk -l | grep -e "part /mnt" | cut -d ' ' -f1) ; do  [  -d /mnt/$p ] &&   umount  /mnt/$p &> /dev/null ;   done    }
