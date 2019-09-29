# 账号密码

使用WordPress，可能会用到的几组账号密码如下：

## WordPress

在初始化安装的时候由用户自行设置

## MySQL

* 管理员账号：*`root`*
* 管理员密码：存储在您的服务器指定文件中   

  - Linux 系统  

     **密码存储路径**：*/credentials/password.txt*    
     **获取方式**： 建议通过云控制台的命令终端，运行下图**红框**所示命令，获取数据库密码   
     ![运行cat命令](https://libs.websoft9.com/Websoft9/DocsPicture/zh/common/catdbpassword-websoft9.png)

  - Windows 系统  

     **密码存储路径**：*C:/credentials/password.txt*     
     **获取方式**： 远程登录到服务器，打开此文件即可   

  **注意**：若服务器上不存在 password.txt 文件，那么数据库密码是 `123456`。此时务必修改为强密码，类似于：f@N7eUUm25xAjP!$ ，这样有助于提高数据库的安全性，减少数据库密码被破解的风险。

 > 需要登录MySQL，请参考 [MySQL可视化管理](/zh/admin-mysql.md)

## Linux

* 主机地址：服务公网IP地址
* 连接方式：云控制台 **在线 SSH** 或 **SFTP客户端工具** 或 **SSH 客户端工具**
* 管理员密码：创建服务器的时候自行设置，若不记得密码需要通过云控制台重置。
* 管理员账号：不同的云平台有一定的差异
   |  云平台   |  管理员账号   |
   | --- | --- |
   |  Azure   |  创建服务器的时候自行设置   |
   |  AWS Centos 系统   |  centos   |
   |  AWS Ubuntu 系统  |  ubuntu   |
   |  阿里云，华为云，腾讯云   |  root   |

## Windows

* 主机地址：服务公网IP地址
* 连接方式：云控制台在线管理 或 远程桌面工具
* 管理员密码：创建服务器的时候自行设置，若不记得密码需要通过云控制台重置。
* 管理员账号：不同的云平台有一定的差异
   |  云平台   |  管理员账号   |
   | --- | --- |
   |  Azure   |  创建服务器的时候自行设置   |
   |  azure，阿里云，华为云，腾讯云   |  administrator   |