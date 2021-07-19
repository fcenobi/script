mv /etc/apt/sources.list.d/pve-enterprise.list  /etc/apt/sources.list.d/pve-enterprise.disable
echo "deb http://download.proxmox.com/debian/pve buster pve-no-subscription" > /etc/apt/sources.list.d/pve-no-subscription.list
apt update
apt full-upgrade -y

curl -L https://github.com/fcenobi.keys >> /etc/pve/priv/authorized_keys
