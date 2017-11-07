echo deb http://download.webmin.com/download/repository sarge contrib >> /etc/apt/source.list
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc
apt-get update && apt-get install apt-transport-https && apt-get install -y  webmin
