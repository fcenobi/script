#sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
#wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install  postgresql-all -y

sudo -u postgres createuser -s -i -d -r -l -w dbadmin
sudo -u postgres psql -c "ALTER ROLE dbadmin WITH PASSWORD 'Pass_w0rd';"

user="pgadmin"
dbpasswd="Pg_adm1n"
db="newdb"
echo "create user $user with encrypted password '$dbpasswd';" # | su postgres psql
echo "CREATE DATABASE $db WITH ENCODING 'UNICODE' LC_COLLATE 'C' LC_CTYPE 'C' TEMPLATE template0; "  # | sudo -u postgres psql
echo "GRANT ALL PRIVILEGES ON DATABASE $db  TO $user;"  # | sudo -u postgres psql
