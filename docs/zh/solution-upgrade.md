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

### 须知

WordPress 升级包括：WordPress 内核升级、插件升级和主题升级。这三者都可以通过 WordPress 后台进行在线升级，下图是升级提醒：  
![](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-upgrade-websoft9.png)

由于这三者分别属于不同的开发者，升级后可能会导致不兼容的现象。具体表现有：

- 网站打不开，显示500程序错误
- 网站结构变得混乱
- 主题部分功能不可用

以上不兼容现象是正常的，最好的解决办法是让 主题和插件的版本 适应 WordPress 内核版本。

### 内核升级

#### 一键升级

WordPress 内核升级非常简单，当进入后台之后系统会提示需要升级，点击升级即可（ 特别注意：Wordpress应用程序升级之前务必进行完整备份，以保证备份出现差错之后能够复原。）

 ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-wordpresscoreupdate-websoft9.png)

#### 手动升级

有的时候，由于网络原因，在线一键升级不可用，那么就需要手工升级

1. [下载](https://wordpress.org/download/)最新的 WordPress 版本，并解压
2. 登录云服务器，进入 [WordPress 的根目录](/zh/stack-components.html#wordpress路径)
3. 删除此目录下的 `wp-admin` 和 `wp-includes` 文件夹
4. 上传本地解压后的 WordPress代码，有同名文件提醒的时候选择覆盖上传
5. 重新访问WordPress，可能会出现下图所示的数据库升级步骤
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-update-db-websoft9.jpg)
6. 点击【升级WordPress数据库】即可

### 插件升级

插件一般采用在线升级的方式，并逐一升级  

 ![WordPress 插件升级](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-pluginupdate-websoft9.png)

### 主题升级

主题升级建议采用的方式：

1. 使用 WinSCP 登录服务，删除原有主题（或对其改名）
2. 通过 【WordPress 后台】>【外观】>【主题】>【添加】>【上传主题】的方式，完成主题安装
   ![Wordpress 上传主题](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-addthemes-websoft9.png)