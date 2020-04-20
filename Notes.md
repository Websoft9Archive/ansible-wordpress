# WordPress Notes

组件名称：WordPress  
文档地址：https://wordpress.org  
安装方式： Debian家族 | RHEL家族 | Windows | | Docker  

临时责任人：cdl


## 概要

WordPress 是全球广受欢迎的企业建站系统

## 环境要求

* 程序语言：PHP
* 应用服务器：Apache | Nginx
* 数据库：MySQL
* 依赖组件：无

## 安装说明

只需准备：Apache | Nginx, MySQL, PHP 环境，就可以运行WordPress  

## 配置

安装完成后，需要依次完成如下配置


## 服务

WordPress 自身无服务，主要涉及的服务如下：  

```
systemctl restart httpd
systemctl restart nginx
systemctl restart php-fpm
```

## 常见问题

#### 数据库连接信息存储在哪个文件？

wp-config.php

## 日志

* 2020-01-14 完成项目