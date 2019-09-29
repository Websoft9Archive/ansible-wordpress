# 参数

WordPress 预装包包含 WordPress 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

Websoft9 提供了多种 WordPress部署包，有着不同的操作系统以及 Web 服务器组合，请根据你具体使用的部署包查看对应的路径

### WordPress路径

#### Wordpress(LAMP or LNMP)

WordPress 安装目录： */data/wwwroot/wordpress*  
WordPress 配置文件： */data/wwwroot/wordpress/wp-config.php* 

#### Wordpress(IIS)

WordPress 安装目录： *C:\inetpub\wwwroot\wordpress*  
WordPress 配置文件： *C:\inetpub\wwwroot\wordpress\wp-config.php* 

#### Wordpress(WAMP)

WordPress 安装目录： *C:\websoft9\wampserver\www*  
WordPress 配置文件： *C:\websoft9\wampserver\www\wp-config.php* 

> WordPress 配置文件中包含数据库连接信息，更改了 MySQL 数据库账号密码，此处也需要对应修改

### 环境路径 

支撑 WordPress 运行的环境组件包括：PHP, MySQL, Apache or Nginx等，请根据不同的部署包分别查看

| 部署包名称 | 说明| 参考项 |
| --- | --- | --- |
| Wordpress(LAMP) | Web服务器为 Apache，系统为 Linux |[PHP](https://support.websoft9.com/docs/lamp/zh/stack-components.html#php), [Apache](https://support.websoft9.com/docs/lamp/zh/stack-components.html#apache), [MySQL](https://support.websoft9.com/docs/lamp/zh/stack-components.html#mysql) |
| Wordpress(LNMP)| Web服务器为 Nginx，系统为 Linux |[PHP](https://support.websoft9.com/docs/lnmp/zh/stack-components.html#php), [Nginx](https://support.websoft9.com/docs/lnmp/zh/stack-components.html#nginx), [MySQL](https://support.websoft9.com/docs/lnmp/zh/stack-components.html#mysql) |
| Wordpress(IIS)| Web服务器为 IIS，系统为 Linux |[PHP](https://support.websoft9.com/docs/windows/zh/stack-components.html#php), [IIS](https://support.websoft9.com/docs/windows/zh/stack-components.html#iis), [MySQL](https://support.websoft9.com/docs/windows/zh/stack-components.html#mysql) |
| Wordpress(WAMP)| Web服务器为 WAMPServer，系统为 Linux |[PHP](https://support.websoft9.com/docs/wampserver/zh/stack-components.html#apache), [Apache](https://support.websoft9.com/docs/wampserver/zh/stack-components.html#apache), [MySQL](https://support.websoft9.com/docs/wampserver/zh/stack-components.html#mysql) |


## 端口号

在云服务器中，通过 **[安全组设置](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** 来控制（开启或关闭）端口是否可以被外部访问。 

本应用建议开启的端口如下：

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| HTTP | 80 | 通过 HTTP 访问 WordPress | 必须 |
| HTTPS | 443 | 通过 HTTPS 访问 Wordpress | 可选 |
| MySQL | 3306 | 远程连接 MySQL | 可选 |

## 版本号

组件版本号可以通过云市场商品页面查看。但部署到您的服务器之后，组件会自动进行更新导致版本号有一定的变化，故精准的版本号请通过在服务器上运行命令查看：

```shell
# Linux Version
lsb_release -a

# PHP Version
php -v

# List Installed PHP Modules
php -m

# Apache version on Centos
httpd -v

# Apache version on Ubuntu
apache2 -v

# List Installed Apache Modules
apachectl -M

# Nginx version
nginx -v

# List Installed nginx Modules
Nginx -V

# MySQL version
mysql -V

# Redis version
redis-server -v
```