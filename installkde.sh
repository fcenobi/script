CentOS-7 "Minimal Install" (no Desktop System)
yum groupinstall "X Window System"
yum groupinstall "Fonts"
yum install kde-workspace
yum install gdm
echo unlink /etc/systemd/system/default.target
echo ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target
echo reboot 
echo systemctl isolate graphical.target
