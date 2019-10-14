# FAQ

#### WordPress支持多语言吗？

支持多语言（包含中文），后台可以设置语言

#### WordPress能建企业网站吗？

可以，全球34%的网站都是基于 WordPress 构建

#### WordPress(LAMP)，WordPress(LNMP)等商品括号中的 LAMP,LNMP 是什么意思？

LAMP和LNMP代表支持WordPress运行所对应的基础环境，具体参考[环境说明](/zh/admin-runtime.html)

#### 是否可以使用云平台的 RDS 作为 WordPress 的数据库？

可以，修改 WordPress 根目录下的配置文件 `wp-config.php` 即可

#### WordPress能在Windows服务器上运行吗？

可以，但是我们推荐在运行 WordPress 效率更高的 Linux 服务器上运行

#### WordPress数据库连接配置信息在哪里？

数据库配置信息在WordPress安装目录下的 *wp-config.php* 中，[查阅安装目录路径](/zh/stack-components.md#wordpress)

#### 如果没有域名是否可以部署 WordPress？

可以，访问`http://服务器公网IP` 即可

#### 数据库 root 用户对应的密码是多少？

密码存放在服务器相关文件中：`/credentials/password.txt`（Linux） 或 服务器桌面（Windows）

#### 是否有可视化的数据库管理工具？

有，内置phpMyAdmin，访问地址：http://服务器公网IP/phpmyadmin

#### 如何禁止phpMyAdmin访问？

连接服务器，编辑 phpMyAdmin 配置文件，将其中的 Require all granted 更改为 Require ip 192.160.1.0，然后重启 Apache 服务

#### 是否可以修改WordPress的源码路径？

可以，通过修改 [虚拟主机配置文件](/zh/stack-components.md#wordpress路径)中相关参数

#### WordPress 登录后台如何使用 SSL？

在 wp-config.php 文件中的特定位置，添加如下两行代码

```
### 添加代码开始 ###
define('FORCE_SSL_ADMIN', true);
define('FORCE_SSL_LOGIN', true);
### 添加代码结束 ###

if ( !defined(‘ABSPATH’) )
        define(‘ABSPATH’, dirname(__FILE__) . ‘/’)
```


#### 如何修改上传的文件权限?

```shell
#WordPress(LAMP)
chown -R apache.apache /data/wwwroot

#WordPress(LNMP)
chown -R nginx.nginx /data/wwwroot

find /data/wwwroot -type d -exec chmod 750 {} \;
find /data/wwwroot -type f -exec chmod 640 {} \;
```
#### 部署和安装有什么区别？

部署是将一序列软件按照不同顺序，先后安装并配置到服务器的过程，是一个复杂的系统工程。  
安装是将单一的软件拷贝到服务器之后，启动安装向导完成初始化配置的过程。  
安装相对于部署来说更简单一些。 

#### 云平台是什么意思？

云平台指提供云计算服务的平台厂家，例如：Azure,AWS,阿里云,华为云,腾讯云等

#### 实例，云服务器，虚拟机，ECS，EC2，CVM，VM有什么区别？

没有区别，只是不同厂家所采用的专业术语，实际上都是云服务器