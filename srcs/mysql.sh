#!/bin/bash

apt update
apt -y install expect
chown -R mysql:mysql /var/lib/mysql
apt update
expect -c "
spawn apt install -y  mysql-server 
expect \"Enter root password:\"
send \"root\r\"
expect \"Re-enter root password:\"
send \"root\r\"
expect eof
"
