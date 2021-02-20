#!/bin/bash

service php7.3-fpm start
chown -R mysql:mysql var/lib/mysql
service mysql start
mysql -u root -proot mehdi < /root/tools/mehdi.sql
nginx -g 'daemon off;'
service nginx start
