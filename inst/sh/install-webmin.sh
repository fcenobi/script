cd ~
echo deb http://download.webmin.com/download/repository sarge contrib >> /etc/apt/sources.list
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc
apt-get update && apt-get install apt-transport-https && apt-get install -y  webmin

#disable https
sed -i 's/ssl=1/ssl=0/g' /etc/webmin/miniserv.conf
sed -i 's/port=10000/port=5000/g' /etc/webmin/miniserv.conf
sed -i 's/listen=10000/listen=5000/g' /etc/webmin/miniserv.conf
#restart service
/etc/init.d/webmin restart

#install apache2 and php
apt-get install -y php php-cgi php-cli php-common php-curl php-gd php-mysql php-pgsql  php-sqlite3 php-xml libapr1 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap libjansson4 apache2-bin apache2-data apache2-utils apache2 ssl-cert

#fix php path
sed -i  's/php4/php\/7.4/g'  /etc/webmin/phpini/config
sed  -i  's/apache/apache2/g'  /etc/webmin/phpini/config
#restart service
/etc/init.d/webmin restart

