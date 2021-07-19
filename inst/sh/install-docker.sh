curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker $USER 
echo "utente da aggiungere al gruppo docker?: "
read  usertoadd
usermod -aG docker $usertoadd
echo "user: $usertoadd aggiunto al gruppo docker"
