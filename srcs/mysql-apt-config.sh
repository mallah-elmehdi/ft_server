#!/bin/bash

apt update
wget https://dev.mysql.com/get/mysql-apt-config_0.8.13-1_all.deb
dpkg -i mysql-apt-config_0.8.13-1_all.deb << E
1
1
4
E
rm mysql-apt-config_0.8.13-1_all.deb
