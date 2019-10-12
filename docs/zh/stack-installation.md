---
sidebarDepth: 3
---

# 初始化安装

在云服务器上部署 WordPress 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80** 端口是否开启
3. 若想用域名访问 WordPress，请先到 **域名控制台** 完成一个域名解析

## WordPress 安装向导

1. 使用本地电脑的 Chrome 或 Firefox 浏览器访问网址：*https://域名* 或 *https://Internet IP*, 进入安装向导  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wp01.png)
2. 选择语言后，进入 WordPress 安装要求说明，点击“现在就开始”进入下一步 
  ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-install001-websoft9.png)
3. 系统进入数据库连接信息安装项，请填写数据库连接信息（[不知道账号密码？](/zh/stack-accounts.md#mysql)） 
  ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-install002-websoft9.png)
4. 数据库验证通过后，系统提示正式“进行安装” 
  ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-install003-websoft9.png)
5. 设置您的管理员账号、密码和邮箱， 点击“安装WordPress”; 
  ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-install004-websoft9.png)
6. 恭喜，成功安装 
  ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-install005-websoft9.png)
7. 进入后台（http//域名或IP/wp-admin），试试WordPress的功能 
  ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-install006-websoft9.png)
8. WordPress的安装已经全部完成。

> 需要了解更多WordPress的使用，请参考官方文档：[WordPress Documentation](https://wordpress.org/support/)


### 启用 Avada 主题

如果你的 WordPress 预装包中包含了 Avada 主题，请参考本节完成 Avada 启用和模板导入：

#### 在线导入Avada模板

完成镜像安装之后，WordPress前台页面并没有模板的效果，请勿在这个时候误以为 Avada 没有高大上的效果而放弃它，那就太可惜了。实际上Avada内置了20+个免费模板，均可以在线导入。步骤如下：

1. 通过后台-插件，选择所有插件后全部启用  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-enableplugins-websoft9.png)

2. 后台-Avada-演示，进入Avada演示界面 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/avada/avada-getdemo-websoft9.png)

3. 选择一个演示，可以进行“预览”和“导入”两种操作

4. 以其中“Science”为例，点击导入，导入内容为“全部”，点击“导入”按钮 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/avada/avada-demoall-websoft9.png)

5. 系统会有一个提示，直接点击OK，进入演示导入过程 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/avada/avada-demook-websoft9.png)

6. 演示导入完成后，系统会提示“完成”（少数时候受制于网络原因，导入可能不成功，需要多次尝试） 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/avada/avada-democomplete-websoft9.png)

7. 点击“完成”，回到演示列表页面，会看到“Science”的状态已经为完全导入了。如果导入不成功，会显示部分导入 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/avada/avada-democomplete2-websoft9.png)

8. 在回到前台页面，看看模板的效果

#### 在线卸载Avada模板

导入的模板可以在线卸载（清除干净），如果你想导入新的模板，请先卸载已有模板，卸载步骤如下：

1. 后台-Avada-演示，找到要卸载的演示，点击“修改” 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/avada/avada-uninstall-websoft9.png)
2. 勾选“卸载”，点击移除按钮，开始卸载
3. 卸载成功，系统会提示完成

### 启用 Porto 主题

如果你的 WordPress 预装包中包含了 Porto 主题，请参考本节完成 Porto 启用和模板导入：

#### 在线导入Porto模板

完成镜像安装之后，WordPress前台页面并没有模板的效果，请勿在这个时候误以为Porto没有高大上的效果而放弃它，那就太可惜了。实际上Porto内置了20+个免费模板，均可以在线导入。导入界面步骤如下：

1. 后台-Porto-安装演示，进入安装演示页面，例如：点击Business Consultant来安装 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/porto/porto-demoyes-websoft9.png)
2. 演示安装过程会有进度条提示，请耐心等待5分钟左右 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/porto/porto-demoing-websoft9.png)
3. 演示导入完成，我们回到前台，发现演示可用，但是轮播区提示错误（…home-bc not found）
4. 是因为在线导入不能导轮播，还需单独导入轮播（Slider）数据

#### 在线导入Revolution Sliders

导入轮播数据的操作步骤如下：

1. 下载Revolution Sliders演示包到本地电脑（下载地址：[https://服务器公网ip/slidersdemo.zip）](https://服务器公网ip/slidersdemo.zip）)
2. 解压之
3. 后台-革命滑块-导入幻灯片 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/porto/porto-siderimport001-websoft9.png)
4. 选择对应的幻灯片压缩包（根据Porto模板提示而选择，例如…home-bc not found，那么这时候就选择home-BC.zip） 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/porto/porto-siderimport002-websoft9.png)
5. 在查看网站首页，我们发现轮播导入成功了。

#### 在线卸载Porto模板

Porto的演示模板导入之后，就可以根据演示来个性化您的网站了，如果对于导入的效果不满意，希望导入其他演示，那么最好删除演示，否则新导入的数据会累加到已有Porto系统中，显得非常的臃肿不堪。

删除步骤：

1. 后台-媒体-媒体库，删除所有图片
2. 后台-页面管理，删除所有页面
3. 后台-外观-菜单，删除所有菜单
4. 后台-文章，删除所有文章

如果觉得以上步骤太过于繁琐，请直接清空WordPress的数据库，重新安装也是可以的。

## WordPress&Discuz 安装向导

WordPress&Discuz 预装包部署后，浏览器访问：*https://服务器公网ip/9panel* 开始安装向导。

**注意**：应用是否通过域名访问，Linux系统 或 Windows系统，对应的安装步骤不同，请选择合适的方案：

### 方式一：通过IP访问

如果不打算使用域名访问网站，而是通过IP地址访问网站，安装非常简单：

* WordPress安装入口：*https://服务器公网IP*，进入 [WordPress 安装向导](/zh/stack-installation.md#wordpress-安装向导)
* Discuz安装入口：*https://服务器公网IP/discuz*，进入 [Discuz 安装向导](https://support.websoft9.com/docs/discuz/zh/stack-installation.md#discuz-安装向导)

### 方式二：共用一个域名访问

共用一个域名（假设域名为www.abc.com），类似：

* *https://www.abc.com*   访问 WordPress
* *https://www.abc.com/discuz*   访问 Discuz

这种情况下的安装步骤如下：

1. 登录到域名管理面板，完成解析域名，确保域名解析成功
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/common/domain-websoft9.png)
2. 分别完成安装向导
   - 本地浏览器访问：*https://www.abc.com*   开始 [WordPress 安装向导](/zh/stack-installation.md#wordpress-安装向导)
   - 本地浏览器访问：*https://www.abc.com/discuz*   开始 [Discuz 安装向导](https://support.websoft9.com/docs/discuz/zh/stack-installation.md#discuz-安装向导)

### 方式三：分别配置域名（LAMP版）

给 WordPress 和 Discuz 分别配置不同的域名，例如：

* *https://wordpress.abc.com*  配置给 WordPress
* *https://discuz.abc.com*    配置给 Discuz

> LAMP版即表明你是的服务器是 Linux 系统，请使用 WinSCP 连接服务器  

此场景下对应的安装步骤如下：

1. 登录到域名管理面板，分别完成域名解析（增加一个A记录到服务器公网IP地址），参考下图：
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/common/domain-websoft9.png)
2. 确保域名解析已经成功
3. 通过 WinSCP 连接服务器，进入*/etc/httpd/conf.d*目录，修改域名的配置文件，绑定各自的域名。 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress-discuz/wpdz-vhostconf-1-websoft9.png)
   - WordPress域名绑定：请修改“vhost.conf”里面的域名信息，然后保存
   - Discuz域名绑定：请修改“discuz.conf.范例”里面的域名信息，保存后再去掉“.范例”后缀使之生效
4. 使用 WinSCP 重启服务 或 云控制台重启服务器
   ```
   systemctl restart httpd
   ```
5. 分别完成安装向导
   - 本地浏览器访问：*https://wordpress.abc.com*   开始 [WordPress 安装向导](/zh/stack-installation.md#wordpress-安装向导)
   - 本地浏览器访问：*https://discuz.abc.com*   开始 [Discuz 安装向导](https://support.websoft9.com/docs/discuz/zh/stack-installation.md#discuz-安装向导)

### 方式三：分别配置域名（WAMP版）

给 WordPress 和 Discuz 分别配置不同的域名，例如：

* *https://wordpress.abc.com*  配置给 WordPress
* *https://discuz.abc.com*    配置给 Discuz

> WAMP 版即表明你是的服务器是 Windows 系统，请使用 远程桌面工具 连接服务器  

此场景下对应的安装步骤如下：

1. 登录到域名管理面板，分别完成域名解析（增加一个A记录到服务器公网IP地址），参考下图：
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/common/domain-websoft9.png)
2. 请检验域名解析是否成功
3. 远程到Windows服务器，进行域名配置文件 **http-vhosts.conf** 修改，具体操作如下：
   - 单击（鼠标左键）绿色的 WAMPserver 图标，依次点击：【Apache】>【http-vhosts.conf】 
   - 将标注红框的 ServerName 值换成您自己的域名 
   - 保存后修改 
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress-discuz/wordpressdiscuz-domain-1-websoft9.png)
4. 退出 WAMPserver 
5. 重新启动WAMPServer，单击（鼠标左键）绿色的 WAMPserver 按钮，点击“重新启动所有服务”
6. 分别完成安装向导
   - 本地浏览器访问：*https://wordpress.abc.com*   开始 [WordPress 安装向导](/zh/stack-installation.md#wordpress-安装向导)
   - 本地浏览器访问：*https://discuz.abc.com*   开始 [Discuz 安装向导](https://support.websoft9.com/docs/discuz/zh/stack-installation.md#discuz-安装向导)

---

### FAQ

#### 如何删除引导页面？

打开IP地址显示的是引导页面，引导页面的作用是为了在镜像首次安装的时候给用户以有效提醒。

请到 */data/wwwroot/default* 目录中删除引导页面相关的内容。删除的时候，一定要保留wordpress和discuz文件夹，删除后请清除浏览器缓存，这样引导页面就不会出现了

#### 为什么默认打开是 WordPress？

WordPress相比Discuz来说更为流行，以Wordpress为主页是大多数用户可能的选择。Wordpress对应的配置文件是vhost.conf，可以自行修改

#### 安装的时候显示Discuz!DatabaseError?

如果数据库名称、数据库账号与数据库密码填写与实际不符合，安装就会失败，显示“Discuz!DatabaseError”错误，具体解决办法：

1. 使用phpMyAdmin（登录账号请使用discuz所用到的数据库账号）登录，验证你填写的数据库账号是否与实际匹配
2. 请到服务器上删除./data/install.lock文件
3. 通过网址：*https://ip/discuz/install* 或 *https://域名/install* 重装（一定要加上/install）

## WordPress&PHPWind 安装向导

WordPress&PHPWind 预装包部署后，浏览器访问：*https://服务器公网ip/9panel* 开始安装向导。

**注意**：应用是否通过域名访问，Linux系统 或 Windows系统，对应的安装步骤不同，请选择合适的方案：

### 方式一：通过IP访问

如果不打算使用域名访问网站，而是通过IP地址访问网站，安装非常简单：

* WordPress 安装入口：*https://服务器公网IP*，进入 [WordPress 安装向导](/zh/stack-installation.md#wordpress-安装向导)
* PHPWind 安装入口：*https://服务器公网IP/phpwind*，进入 [PHPWind 安装向导](https://support.websoft9.com/docs/lamp/installation/zh/phpwind.html#phpwind-初始化安装向导)

### 方式二：共用一个域名访问

共用一个域名（假设域名为www.abc.com），类似：

* *https://www.abc.com*   访问 WordPress
* *https://www.abc.com/phpwind*   访问 PHPWind

这种情况下的安装步骤如下：

1. 登录到域名管理面板，完成解析域名，确保域名解析成功
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/common/domain-websoft9.png)
2. 分别完成安装向导
   - 本地浏览器访问：*https://www.abc.com*   开始 [WordPress 安装向导](/zh/stack-installation.md#wordpress-安装向导)
   - 本地浏览器访问：*https://www.abc.com/phpwind*   开始 [PHPWind 安装向导](https://support.websoft9.com/docs/lamp/installation/zh/phpwind.html#phpwind-初始化安装向导)

### 方式三：分别配置域名（LAMP版）

给 WordPress 和 PHPWind 分别配置不同的域名，例如：

* *https://wordpress.abc.com*  配置给 WordPress
* *https://phpwind.abc.com*    配置给 PHPWind

> LAMP版即表明你是的服务器是 Linux 系统，请使用 WinSCP 连接服务器  

此场景下对应的安装步骤如下：

1. 登录到域名管理面板，分别完成域名解析（增加一个A记录到服务器公网IP地址），参考下图：
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/common/domain-websoft9.png)
2. 确保域名解析已经成功
3. 通过 WinSCP 连接服务器，进入*/etc/httpd/conf.d*目录，修改域名的配置文件，绑定各自的域名。 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress-discuz/wpdz-vhostconf-1-websoft9.png)
   - WordPress 域名绑定：请修改“vhost.conf”中的域名信息，然后保存
   - PHPWind 域名绑定：请修改“phpwind.conf.范例”中的域名信息，保存后再去掉“.范例”后缀使之生效
4. 使用 WinSCP 重启服务 或 云控制台重启服务器
   ```
   systemctl restart httpd
   ```
5. 分别完成安装向导
   - 本地浏览器访问：*https://wordpress.abc.com*   开始 [WordPress 安装向导](/zh/stack-installation.md#wordpress-安装向导)
   - 本地浏览器访问：*https://phpwind.abc.com*   开始 [PHPWind 安装向导](https://support.websoft9.com/docs/lamp/installation/zh/phpwind.html#phpwind-初始化安装向导)

### 方式三：分别配置域名（WAMP版）

给 WordPress 和 PHPWind 分别配置不同的域名，例如：

* *https://wordpress.abc.com*  配置给 WordPress
* *https://phpwind.abc.com*    配置给 PHPWind

> WAMP 版即表明你是的服务器是 Windows 系统，请使用 远程桌面工具 连接服务器  

此场景下对应的安装步骤如下：

1. 登录到域名管理面板，分别完成域名解析（增加一个A记录到服务器公网IP地址），参考下图：
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/common/domain-websoft9.png)
2. 请检验域名解析是否成功
3. 远程到Windows服务器，进行域名配置文件 **http-vhosts.conf** 修改，具体操作如下：
   - 单击（鼠标左键）绿色的 WAMPserver 图标，依次点击：【Apache】>【http-vhosts.conf】 
   - 将标注红框的 ServerName 值换成您自己的域名 
   - 保存后修改 
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress-discuz/wordpressdiscuz-domain-1-websoft9.png)
4. 退出 WAMPserver 
5. 重新启动WAMPServer，单击（鼠标左键）绿色的 WAMPserver 按钮，点击“重新启动所有服务”
6. 分别完成安装向导
   - 本地浏览器访问：*https://wordpress.abc.com*   开始 [WordPress 安装向导](/zh/stack-installation.md#wordpress-安装向导)
   - 本地浏览器访问：*https://phpwind.abc.com*   开始 [PHPWind 安装向导](https://support.websoft9.com/docs/lamp/installation/zh/phpwind.html#phpwind-初始化安装向导)

---

### FAQ

#### 如何删除引导页面？

打开IP地址显示的是引导页面，引导页面的作用是为了在镜像首次安装的时候给用户以有效提醒。

请到 */data/wwwroot/default* 目录中删除引导页面相关的内容。删除的时候，一定要保留 wordpress 和 phpwind 文件夹，删除后请清除浏览器缓存，这样引导页面就不会出现了

#### 为什么默认打开是 WordPress？

WordPress相比PHPWind来说更为流行，以Wordpress为主页是大多数用户可能的选择。Wordpress对应的配置文件是vhost.conf，可以自行修改

## 常见问题

#### 浏览器打开IP地址，无法访问 WordPress（白屏没有结果）？

您的服务器对应的安全组80端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### 本部署包采用的哪个数据库来存储 WordPress 数据？

是MySQL

#### 我使用的是 Avada 等主题，当 WordPress 升级后，页面编辑乱码了？

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/avada/wordpress-avadaeditp-websoft9.png)

**问题原因**： Wordpress升级到5.0版本之后，WordPress 官方提供的默认编辑器发生了本质的变化，导致已有主题无法适应新的 WordPress 编辑器内核  

**解决方案**：安装一个名称为“Classic Editor”的插件，继续使用旧的编辑器内核  

  ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/avada/wordpress-classiceditor-websoft9.png)
