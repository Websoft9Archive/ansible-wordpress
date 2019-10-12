# 服务启停

使用由 Websoft9 提供的 WordPress 部署方案，可能需要用到的服务如下：

## Linux系统

### Apache

```shell
#For Centos&Redhat
sudo systemctl start httpd
sudo systemctl stop httpd
sudo systemctl restart httpd
sudo systemctl status httpd

#For Ubuntu&Debian
sudo systemctl start apache2
sudo systemctl stop apache2
sudo systemctl restart apache2
sudo systemctl status apache2
```

### Nginx

```shell
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl status nginx
```

### PHP-FPM
```shell
systemctl start php-fpm
systemctl stop php-fpm
systemctl restart php-fpm
systemctl status php-fpm
```

### MySQL

```shell
sudo systemctl start mysql
sudo systemctl stop mysql
sudo systemctl restart mysql
sudo systemctl status mysql
```

### Redis

```shell
systemctl start redis
systemctl stop redis
systemctl restart redis
systemctl status redis
```

## Windows系统

Windows下的镜像采用图形化界面实现服务的启动、停止和重启操作

### --IIS

进入IIS，点击主机名称，右侧的操作就会显示重启启动，停止等操作

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/iis/iis-restart-websoft9.png)

### --WAMPServer

远程桌面点击WAMPServer图标，然后点击“重新启动所有服务”
![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wampserver/wampserver-clicks-websoft9.png)