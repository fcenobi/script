sudo echo deb http://download.webmin.com/download/repository sarge contrib >> /etc/apt/sources.list
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc
sudo apt-get update && apt-get install apt-transport-https && apt-get install -y  webmin
