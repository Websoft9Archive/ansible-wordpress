# WordPress 自动化安装与部署

本项目是由 [Websoft9](http://www.websoft9.com) 研发的 WordPress 自动化安装程序，开发语言是 Ansible。使用本项目，只需要用户在 Linux 上运行一条命令，即可自动化安装 WordPress，让原本复杂的安装过程变得没有任何技术门槛。  

本项目是开源项目，采用 LGPL3.0 开源协议。

## 配置要求

安装本项目，确保符合如下的条件：

| 条件       | 详情                                  | 备注                 |
| ---------- | ------------------------------------- | -------------------- |
| 操作系统   | CentOS7.x |                      |
| 公有云     | AWS, Azure, 阿里云, 华为云, 腾讯云    |                      |
| 私有云     | KVM, VMware, VirtualBox, OpenStack    |                      |
| 服务器配置 | 最低1核1G，安装时所需的带宽不低于10M  | 建议采用按量100M带宽 |

## 组件

包含的核心组件为：WordPress + Apache/Nginx + MySQL + PHP  
可选的WordPress商业主题包括：Avada, The7, Porto, Divi  

> 这些主题为友情赠送，请遵循主题官方作者的版权，我们不提供技术支持

更多请见[参数表](/docs/zh/stack-components.md)

## 本项目安装的是 WordPress 最新版吗？

本项目通过下载 WordPress 源码进行安装，下载链接存储在：[role/wordpress/defaults/main.yml](/roles/wordpress/defaults/main.yml)。我们会定期检查并测试官方版本的可用性，尽可能保证用户可以顺利安装最新版。

```
#默认官方下载包
wordpress_download_url: "https://github.com/WordPress/WordPress/archive/5.3.2.zip"

```

如果你发现不是最新版，请查看 WordPress 仓库的 [releases 页面](https://gitee.com/ComsenzDiscuz/DiscuzX/releases) 获取最新版源码下载链接，再修改 [main.yml](/roles/wordpress/defaults/main.yml) 中的 `wordpress_download_url` 变量值即可安装指定版本。

**注意：**

如果安装的是 WordPress 集成应用，以 WordPress + Discuz 为例，除了修改 WordPress 的下载链接，还需修改 Discuz 的下载链接和版本号，维护地址：[role/discuz/defaults/main.yml](/roles/discuz/defaults/main.yml)

```
discuz_download_url: "https://gitee.com/ComsenzDiscuz/DiscuzX.git"
#版本号需定期维护
discuz_version: "v3.4-20191201" 
```

如果你想修改 Discuz 版本，请先查看 Discuz 仓库的 [tags 页面](https://gitee.com/ComsenzDiscuz/DiscuzX/tags) 上的最新标签，再修改上面的 `discuz_version` 变量值即可安装最新版本。

## 安装指南

以 root 用户登录 Linux，运行下面的**一键自动化安装命令**即可启动自动化部署。若没有 root 用户，请以其他用户登录 Linux 后运行 `sudo su -` 命令提升为 root 权限，然后再运行下面的脚本。

   ```
 wget -N https://raw.githubusercontent.com/Websoft9/ansible-linux/master/scripts/install.sh; bash install.sh -r wordpress
   ```

 脚本后启动，就开始了自动化安装，必要时需要用户做出交互式选择，然后耐心等待直至安装成功。

 **安装中的注意事项：**  

 1. 操作不慎或网络发生变化，可能会导致SSH连接被中断，安装就会失败，此时请重新安装
 2. 安装缓慢、停滞不前或无故中断，主要是网络不通（或网速太慢）导致的下载问题，此时请重新安装

多种原因导致无法顺利安装，请使用我们在公有云上发布的 [WordPress 镜像](https://apps.websoft9.com/wordpress) 的部署方式


## 文档

文档链接：https://support.websoft9.com/docs/wordpress/zh

## FAQ

- 命令脚本部署与镜像部署有什么区别？请参考[镜像部署-vs-脚本部署](https://support.websoft9.com/docs/faq/zh/bz-product.html#镜像部署-vs-脚本部署)
- 本项目支持在 Ansible Tower 上运行吗？支持
