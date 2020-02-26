Ansible Role: phpmyadmin
=========

本 Role 用于在PHP运行环境下安装 [phpMyAdmin](https://www.phpmyadmin.net/) ，然后完成与 MySQL/MariaDB 数据库连接设置。

## Requirements

运行本 Role，请确认符合如下的必要条件：

| **Items**      | **Details** |
| ------------------| ------------------|
| Operating system | CentOS7.x |
| Python 版本 | Python2  |
| Python 组件 |    |
| Runtime |  LAMP or LNMP, MySQL or MariaDB |


## Related roles

本 Role 在语法上单独存在，但程序运行时需要确保已经运行： apache | nginx, php, lamp | lnmp, mysql | mariadb 等 Roles。以 LAMP 为例：

```
  roles:
    - { role: role_apache } 
    - { role: role_php-fpm } 
    - { role: role_mysql }
    - { role: role_lamp } 
    ....
    - {role: role_phpmyadmin, tags: "role_phpmyadmin"}
```


## Variables

本 Role 主要变量以及使用方法如下：

| **Items**      | **Details** | **Format**  | **是否初始化** |
| ------------------| ------------------|-----|-----|
| phpmyadmin_webs | [ apache, nginx ] | 字符串 |是|
| phpmyadmin_mysql_password | [ "123456"] | 字符串 |是|
| phpmyadmin_php_version | [ "5.4", "5.5",., "7.2" ] | 字符串 |是|
| phpmyadmin_download_url | ["old": url,  "new": url ]   | 字典 |应用于国内加速|
| phpmyadmin_runtime_meta | [...]   | 字典 |无|

注意：
1. phpmyadmin_download_url 初始化在 *[role_cloud](https://github.com/websoft9dev/role_cloud/blob/master/vars/cloud_download_url.yml)* 中统一修改
2. phpmyadmin_mysql_password 的值等于 [role_mysql](https://github.com/websoft9dev/role_mysql) 中的变量 mysql_root_password 的值
3. phpmyadmin_php_version 的值等于 [role_php-fpm](https://github.com/websoft9dev/role_php-fpm) 中的变量 php_version 的值



## Example

```
- name: LAMP
  hosts: all
  become: yes
  become_method: sudo 
  vars_files:
    - vars/main.yml 
  
  vars:
    phpmyadmin_webs: 'apache'
    phpmyadmin_password: '123456'
    phpmyadmin_php_version: '7.2'

  roles:
    - { role: role_apache } 
    - { role: role_php-fpm } 
    - { role: role_mysql }
    - { role: role_lamp } 
    ....
    - {role: role_phpmyadmin, tags: "role_phpmyadmin"}
```

## FAQ