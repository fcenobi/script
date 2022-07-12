# > /dev/null  to stdout (no output)
# 1> /dev/null to stdout (no output)
# 2> /dev/null to stderr (no output errot )
# &> /dev/null stdout and  stderr  no output
 
 
 
 function montapart  { for p in $(lsblk -l | grep -e "part $"    | cut -d ' ' -f1) ; do  [ ! -d $p ] &&   mkdir /mnt/$p &> /dev/null ; mount /dev/$p /mnt/$p &> /dev/null ; done }
 function smontapart { for p in $(lsblk -l | grep -e "part /mnt" | cut -d ' ' -f1) ; do  [  -d /mnt/$p ] &&   umount  /mnt/$p &> /dev/null ;   done    }


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

function parameterlistfromhelo {
 HELPFILE=$1
 
 $1 --help | grep -e ^-- | awk '{ print $1 "   $" toupper($1) "  "}' | sed 's/\$--/\$/g'
}



function  $(date  '+%y%m%d-%H:%m:%S%s%S') >> /tmp/bashlog.txt

function pkinst()
{

  ipkg install $inst

}

function statusservice()
{

sta=$(synoservice --status)
servicestatus=$(echo $sta | sed 's/=======================================/\n/g'  | sed 's/required upstart job://g' |  sed 's/Service\|status=\| is//g'| awk '{print $2,$4,$1}' | sort  )


diof=$( echo "$servicestatus" | grep disable | grep stop  )
dion=$( echo "$servicestatus" | grep disable | grep start )
enof=$( echo "$servicestatus" | grep enable  | grep start )
enon=$( echo "$servicestatus" | grep enable  | grep stop  )

anomali=$(echo "$enof" ; echo "$dion" )
normali=$(echo "$enon" ; echo "$diof" )
running=$(echo "$enon" ; echo "$dion" )
fermati=$(echo "$enof" ; echo "$diof" )


echo anomali "$anomali"
echo normali "$normali"
echo running "$running"
echo fermati "$fermati"

}

function pkinst()
{

  ipkg install $inst

}


function pklist() {
pkglist=$(ipkg list  | cut -d ' ' -f1  | sort -u ) 

echo "$pkglist" 
}

function getsambashare() {
sambashare=$(cat /etc/samba/smb.share.conf | grep -e "^\[" | cut -d '[' -f2 | cut -d ']' -f1)
results=""
for i in $sambashare ;
do
share=$i ;
conf=$(sed -n -E "/$share/,/comment/p" /etc/samba/smb.share.conf) ; 
path=$(echo "$conf" | grep path -m 1 | cut -d '=' -f2) ;
## shareinfo="$(echo   '\\'$(hostname)'\'${share} ${path} )"

echo $shareinfo
done

}

function goshare() {
share=$1
conf=$(sed -n -E "/$share/,/comment/p" /etc/samba/smb.share.conf)
cd $(echo "$conf" | grep path -m 1 | cut -d '=' -f2)
}

function getshareconf() { 
conf=$(sed -n -E "/$share/,/comment/p" /etc/samba/smb.share.conf)
echo "$conf"
}

function getsharediff() { 
share1=$1
share2=$2
share1=$(sed -n -E "/$share1/,/comment/p" /etc/samba/smb.share.conf)
share2=$(sed -n -E "/$share2/,/comment/p" /etc/samba/smb.share.conf)
diff  -y <(echo "$share1") <(echo "$share2")
}


function arpa {
arp -a | column -t 

}

function fhistory {
 arg=$1
 bashhistory=/var/log/bash_history.log
 echo " comandi con {$arg} in {$bashhistory } " 
 sed  -e 's/^.*UID=\S //g' /var/log/bash_history.log |  grep  --text -n --no-messages  -i -e "$arg" 
}


function listtartgetcsv {

cat /usr/syno/etc/iscsi_target.conf | grep ^tid -A2 | cut -d '=' -f2 | sed 's/$/;/g' | sed 's/^/"/g' | sed 's/\;/\"\;/g' | tr '\n' ' ' | sed 's/\; /\;/g' | sed 's/\;\"--\";/\n/g'  > /volume4/pxe/iscitarget.csv 
sed -i 's/\;$/\n/g' /volume4/pxe/iscitarget.csv 

#cat /volume4/pxe/iscitarget.csv

export listatarget=$(cat /volume4/pxe/iscitarget.csv ) 
echo "$listatarget"

}
function itartget {

target="$(cat /usr/syno/etc/iscsi_target.conf | grep ^tid -A2 | cut -d '=' -f2 )"
#sed 's/$/;/g' | sed 's/^/"/g' | sed 's/\;/\"\;/g' | tr '\n' ' ' | sed 's/\; /\;/g' | sed 's/\;\"--\";/\n/g'  > /volume4/pxe/iscitarget.csv 
#sed -i 's/\;$/\n/g' /volume4/pxe/iscitarget.csv 

#cat /volume4/pxe/iscitarget.csv

#export listatarget=$(cat /volume4/pxe/iscitarget.csv ) 
echo "$target"

}


function treedir {
 ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'
}

function setdiracl  {
  dir=$1
 [[ -z  "$dir" ]]  && dir=$(pwd)

        echo  "chown admin:users $dir" 
        echo  "chmod 766  $dir    "
}


function setfileowneracl  {
       file=$1
        echo "   chown admin:users $file  "
       echo "  chmod 766 $file "
}
function authme() {
    ssh $1 'cat >>.ssh/authorized_keys' <~/.ssh/id_rsa.pub
}

unction extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

function fs() {
    if du -b /dev/null > /dev/null 2>&1; then
        local arg=-sbh
    else
        local arg=-sh
    fi
    if [[ -n "$@" ]]; then
        du $arg -- "$@"
    else
        du $arg .[^.]* *
    fi
}

function clobber_ds_stores {
    find . -name ".DS_Store" -print0 | xargs -0 rm -rf
}

