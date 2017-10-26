#!/bin/bash
wget https://www.realvnc.com/download/file/vnc.files/VNC-Server-6.2.0-Linux-x64.deb
sudo dpkg -i VNC-Server*
sudo apt-get install -f
wget https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.17.731-Linux-x64.deb
sudo dpkg -i VNC-Viewer*
sudo apt-get install -f
sudo systemctl enable vncserver-x11-serviced.service
sudo systemctl start vncserver-x11-serviced.service
echo LXSX5-JRR6E-LSK7H-SE36N-EUVKA >> ~/vncserverlicenza.txt



