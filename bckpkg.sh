packagelist=$(dpkg-query -f '${binary:Package}\n' -W)

echo "apt-get  install -y $packagelist" > pkg-install.sh
