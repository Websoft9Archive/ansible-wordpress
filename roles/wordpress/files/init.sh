#!/bin/bash

password=`< /dev/urandom tr -dc 0-9-A-Z-a-z-/|head -c ${1:-10};echo`

systemctl restart mysqld


mysql -uroot -p123456 -e "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY '${password}';"
mysql -uroot -p123456 -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' WITH GRANT OPTION;"

printf "username:wordpress\npassword:${password}\n" >> ~/password.txt

sed -i "s/wordpress_password/${password}/" /data/wwwroot/wordpress/wp-config.php

sed -i "s/\/root\/init.sh//" /etc/rc.local
rm -rf /root/init.sh