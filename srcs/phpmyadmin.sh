#!/bin/bash

apt update
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.4/phpMyAdmin-4.9.4-all-languages.tar.gz
tar -xvf phpMyAdmin-4.9.4-all-languages.tar.gz 
mv phpMyAdmin-4.9.4-all-languages /var/www/html/phpmyadmin
rm -fr phpMyAdmin-4.9.4-all-languages.tar.gz
chown -R www-data:www-data /var/www/html/phpmyadmin
