Ansible Role: 9panel
=========

本 Role 用于下载并安装 [9panel](https://github.com/websoft9/9panel) ，然后根据变量值设置 9panel 显示内容。

本 Role 可以与 php, java, apache, nginx 等roles组合成 LAMP,LNMP,JAVA 等运行环境项目

## Requirements

运行本 Role，请确认符合如下的必要条件：

| **Items**      | **Details** |
| ------------------| ------------------|
| Operating system | Linux or Windows, 不限发行版本 |
| Python 版本 | Python2, Python3   |
| Python 组件 |    |
| Runtime |  服务器上已经安装 Apache 或 Nginx 其中之一 |


## Related roles

本 Role 与其他 Roles 没有耦合性，语法上可以单独存在。

但是，当与 apache, nginx, php|java 等 Roles 组合时，需要在其后运行。以 LAMP 为例：

```
  roles:
    - { role: role_apache } 
    - { role: role_php-fpm } 
    - { role: role_lamp } 
    ....
    - { role: role_9panel }
```


## Variables

本 Role 主要变量以及使用方法如下：

| **Items**      | **Details** | **Format**  | **是否初始化** |
| ------------------| ------------------|-----|-----|
| w9panel_webs | [ apache, nginx ] | 字符串 | 是 |
| w9panel_set_infrastructure:  | [ LAMP, LNMP... ] | 字符串 | 是 |
| w9panel_set_apps:   | [ - WordPress - Discuz ] | 列表 | 是  |
| w9panel_download_url | [ url ]   | 字符串  | 应用于国内加速 |

注意：
1. w9panel_download_url 初始化在 *[role_cloud](https://github.com/websoft9dev/role_cloud/blob/master/vars/cloud_download_url.yml)* 中统一修改
2. w9panel_set_infrastructure,  w9panel_set_apps的值请参考 [9panel](https://github.com/websoft9/9panel) 

## Example

```
- name: Nextcloud
  hosts: all
  become: yes
  become_method: sudo 
  vars_files:
    - vars/main.yml 
  
  vars:
    w9panel_webs: 'apache'
    w9panel_set_infrastructure: LAMP
    w9panel_set_apps: 
        - Moodle
  roles:
    - { role: role_9panel }
```

## FAQ

#### 变量为什么以“w9panel”开头？
Ansible 不支持以数字开头的变量
