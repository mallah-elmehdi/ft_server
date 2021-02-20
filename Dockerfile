# 1) MAKE OS OF THE CONTAINER

FROM debian:buster

# 2) ==== UPDATING...

RUN apt update

# 3) ==== SET UP THE CONTAINER

RUN	mkdir /root/tools
COPY ./srcs/* /root/tools/
# - installing needed tools
RUN bash /root/tools/tools.sh

# 4) ==== INSTALL NGNIX

RUN apt update
RUN bash /root/tools/nginx.sh
RUN rm /var/www/html/index.nginx-debian.html
# - add ssl key and certificate
RUN bash /root/tools/ssl.sh
# - updating configuration
RUN mv /root/tools/default /etc/nginx/sites-available

# 5) ==== INSTALL PHPMYADMIN

RUN bash /root/tools/phpmyadmin.sh

# 6) ==== INSTALL WORDPRESS

# - installing...
RUN bash /root/tools/wordpress.sh
RUN mv /root/tools/wp-config.php /var/www/html/wordpress/

# 7) ==== INSTALL MYSQL

# - config mysql-apt-config
RUN bash /root/tools/mysql-apt-config.sh
# - installing...
RUN bash /root/tools/mysql.sh
# - creating a DB
RUN bash /root/tools/creatDb.sh

# 8) ==== STARTING...
CMD bash /root/tools/start.sh
