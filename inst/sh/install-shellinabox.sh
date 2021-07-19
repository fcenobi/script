
apt-get install -y shellinabox

cat  > /etc/default/shellinabox << "EOF"
SHELLINABOX_DAEMON_START=1
SHELLINABOX_PORT=4200
SHELLINABOX_ARGS=" --no-beep --disable-ssl "

EOF

/etc/init.d/shellinabox restart
