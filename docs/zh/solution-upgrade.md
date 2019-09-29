# 更新升级

网站技术日新月异，**更新升级**是维护工作之一，长时间不升级的程序，就如长时间不维护的建筑物一样，会加速老化、功能逐渐缺失直至无法使用。  

这里注意更新与升级这两词的差异（[延伸阅读](https://support.websoft9.com/docs/faq/zh/tech-upgrade.html#更新-vs-升级)），例如：
- 操作系统打个补丁常称之为**更新**，Ubuntu16.04 变更为 Ubuntu18.04，称之为**升级**
- MySQL5.6.25-->MySQL5.6.30 常称之为**更新**，MySQL5.6->MySQL5.7 称之为**升级**

WordPress 完整的更新升级包括：系统级更新（操作系统和运行环境）和 WordPress 程序升级两种类型

## 系统级更新

运行一条更新命令，即可完成系统级更新：

``` shell
#For Centos&Redhat
yum update -y

#For Ubuntu&Debian
apt update && apt upgrade -y
```
> 本部署包已预配置一个用于自动更新的计划任务。如果希望去掉自动更新，请删除对应的Cron


## WordPress升级

WordPress 升级包括：WordPress 内核升级、插件升级和主题升级。这三者都可以通过 WordPress 后台进行升级  
![](http://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-upgrade-websoft9.png)

由于这三者分别属于不同的开发者，升级后可能会导致不兼容的现象。具体表现有：

- 网站打不开，显示500程序错误
- 网站结构变得混乱
- 主题部分功能不可用

以上不兼容现象是正常的，最好的解决办法是让 主题和插件的版本 适应 WordPress 内核版本。

### 内核升级

WordPress 内核升级非常简单，当进入后台之后系统会提示需要升级，点击升级即可（ 特别注意：Wordpress应用程序升级之前务必进行完整备份，以保证备份出现差错之后能够复原。）

 ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-update-websoft9.png)


### 插件升级

插件一般采用在线升级的方式

### 主题升级

主题升级建议采用的方式：

1. 使用 WinSCP 登录服务，删除原有主题（或对其改名）
2. 通过 【WordPress 后台】>【外观】>【主题】>【添加】>【上传主题】的方式，完成主题安装