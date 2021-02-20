#!/bin/bash

service mysql start
mysql -u root -proot << E
GRANT ALL PRIVILEGES ON *.* TO 'mehdi'@'localhost' IDENTIFIED BY 'mehdi';
CREATE DATABASE mehdi;
USE mehdi;
E
