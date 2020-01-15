#!/bin/bash

old_password=$(cat /credentials/password.txt | awk 'NR==2' |awk -F ":" '{print $2}' )
new_password=$(</dev/urandom tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c10)

systemctl restart mysqld
mysqladmin -uroot -p${old_password} -h 127.0.0.1 password $new_password
mysqladmin -uroot -p${old_password} -h localhost password $new_password
echo -e 'MySQL username:root\nMySQL Password:'$new_password  > /credentials/password.txt

password=`< /dev/urandom tr -dc 0-9-A-Z-a-z|head -c ${1:-10};echo`

systemctl restart mysqld

mysql -uroot -p$new_password -e "CREATE USER 'dz_user'@'localhost' IDENTIFIED BY '${password}';"
mysql -uroot -p$new_password -e "GRANT ALL PRIVILEGES ON discuz.* TO 'dz_user'@'localhost' WITH GRANT OPTION;"

printf "username:dz_user\npassword:${password}\n" >> /credentials/password.txt

sed -i "s/discuz_password/${password}/" /data/wwwroot/discuz/upload/config/config_global_default.php
                                                                                         
sed -i "s/\/root\/init.sh//" /etc/rc.local                                                      
rm -rf /root/init.sh

