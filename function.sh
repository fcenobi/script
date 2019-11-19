# ls, with chmod-like permissions and more.
# @param $1 The directory to ls
function lls {
  LLS_PATH=$1

  ls -AHl $LLS_PATH | awk "{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/) \
                            *2^(8-i));if(k)printf(\"%0o \",k);print}"
}

function nocommentxml {
  XMLFILE=$1

 cat $XMLFILE | sed 's/<!--/\x0<!--/g;s/-->/-->\x0/g' | grep -zv '^<!--' | tr -d '\0'| grep -v -e '^$'
 }
