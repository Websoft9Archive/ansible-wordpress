# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 域名绑定

绑定域名的前置条件是：已经完成域名解析（登录域名控制台，增加一个A记录指向服务器公网IP）  

完成域名解析后，从服务器安全和后续维护考量，需要完成**域名绑定**：

WordPress 域名绑定操作步骤：

1. 登录云服务器
2. 修改 [虚拟机主机配置文件](/zh/stack-components.html#wordpress路径)，将其中的域名相关的值
   ```text
   #### WordPress(LAMP) bind domain #### 

     <VirtualHost *:80>
     ServerName www.mydomain.com # 修改成您的实际域名
     DocumentRoot "/data/wwwroot/wordpress"
     ...
     
   #### WordPress(LNMP) bind domain #### 

     server {
      listen 80;
      server_name    wordpress.example.com; # 修改成您的实际域名
     ...

   ```
3. 保存配置文件，重启服务

## 更换域名

正确的WordPress域名更换方法为：

1. 打开域名控制台，完成域名解析
2. 连接云服务器，完成域名绑定
3. 登录 WordPress 后台，依次打开：【设置】>【常规】，将网站路径和安装路径设置为新的域名
   ![Wordpress 修改URL](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-modifyurls-websoft9.png)
4. 保存后生效

> 如果更换域名后，网站中有一部分图片地址还是原来的域名，此时需要手工逐一修正

## 管理员密码

实际工作中，我们可能会 **修改** 或 **找回** WordPress 管理员密码

### 修改WordPress管理员密码？

1. 以管理员账号登录后台
2. 依次打开：【用户】>【所有用户】，编辑需要修改密码的账号
3. 往下拉倒【账号管理】项，点击【生成密码】，然后修改密码，并更新个人资料 
   ![Wordpress 修改密码](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-modifypw-websoft9.png)

### 找回 WordPress 管理员密码？

若不记得 WordPress 管理员密码，可以通过如下两个方式找回

#### 方案一：通过邮件找回密码

WordPress可以通过发送邮件找回密码，但前提条件是您的 WordPress 网站已经配置好SMTP
![Wordpress 修改密码](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-forgetpw-websoft9.png)

#### 方案二：修改数据库中的密码字段

如果不能发邮件，请登录数据库管理面板 phpMyAdmin 进行修改

1. 登录 phpMyAdmin，并找到你的网站数据库下的 *wp_user* 表
   ![Wordpress 修改密码](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-wpusers-websoft9.png)
2. 编辑管理员用户（下图以用户名 `admin`为例）  
   ![Wordpress 修改密码](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-wpuserspw-websoft9.png)
3. 截图的地方数据库密码(MD5加密后的密文)，用`21232f297a57a5a743894a0e4a801fc3`替换之
4. 点击【执行】
3. 新的密码为`admin`

## 修改上传文件类型的限制

WordPress默认支持大部分图片等文件格式的上传，但也有一些文件格式是不支持的，根据实际需要，可以增加或禁止一些格式的文件上传。设置方法如下：

把以下代码加到主题目录（```/wp-content/themes/twentysixteen```）下的 functions.php 文件中：
	
   	function edit_upload_types($existing_mimes = array()) {
	// 允许上传的文件类型
	$existing_mimes['woff'] = 'application/woff';
	$existing_mimes['rar'] = 'application/rar';
	
    // 如需添加更多文件类型支持，在其后增加代码即可

	// 不允许上传的的文件类型
	unset( $existing_mimes['jpg'] );

	return $existing_mimes;
	}
	add_filter('upload_mimes', 'edit_upload_types');
    
> 以上是以自带主题 twentysixteen 为例，如果您使用的不是这款主题，则需要到对应主题目录下的 functions.php 文件中添加。

## WordPress 与 Discuz 集成

搭建网站时很有可能遇到这样的问题：使用WordPress搭建了页面，又使用Discuz搭建了一个论坛，两者的用户数据存在不同的数据库中，这样就无法统一整理了。

为了解决这一问题，可以使用 Discuz 提供的 [UCenter插件](https://wordpress.org/plugins/ucenter-integration/) 功能来将两者的用户数据进行统一整合。

> Wordpress与Discuz集成是一件复杂的事情，UCenter插件方案我们在WordPress4.6版本上测试可用，其他版本没有测试过。

## WordPress 使用对象存储

当WordPress的图片超过500张的时候，建议将图片存放到对象存储中（一般称之为OSS）  

WordPress使用OSS有两种方式，第一种是通过OSS客户端上传文件，然后在WordPress中调用；第二种是将OSS与WordPress集成，通过WordPress后台上传的文件就自动存放到OSS中。

### 手工上传文件到OSS（推荐）

1. 通过OSS的客户端工具，上传图片到对象存储
2. 获取对象存储中图片的地址，地址一般类似如下：
   ```
   https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-product-screenshot.png
   ```
3. Wordpress后台-页面编辑-插入多媒体，将图片插入到WordPress系统中
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/aliyun/aliyun-oss-adresstowp-websoft9.png)

### WordPress与OSS集成

1. 将OSS挂载到 WordPress的 wp-upload 文件夹
2. 每次通过WordPress上传的文件，就自动存放到了OSS中

> 挂载 OSS 的操作比较复杂，需要用户自主研究

### WordPress使用阿里云OSS对象储存

下面以阿里云OSS对象存储为例，介绍在WordPress中使用OSS，实现WordPress后台的页面或文章使用资源时自动上传到OSS，并关联使用。具体的操作分两步：在阿里云OSS管理中创建Bucket存储空间；在WordPress后台中配置OSS。

1. 创建 Bucket存储空间

   进入阿里云控制台，可通过菜单的【产品与服务】>【对象存储 OSS】进入OSS控制台，然后点击创建 Bucket按钮创建存储空间，如图：
   ![OSS](https://libs.websoft9.com/Websoft9/blog/tmp/wordpress/zh/oss-websoft9.png)
   
   创建 Bucket 存储空间
   ![OSS](https://libs.websoft9.com/Websoft9/blog/tmp/wordpress/zh/oss-bucket-websoft9.png)
   ![OSS](https://libs.websoft9.com/Websoft9/blog/tmp/wordpress/zh/oss-bucket2-websoft9.png)
   
   > 1、【地域】建议与服务器所在地就近选择，如果使用的是阿里云的服务器，建议选择和服务器同区域，这样可以通过内网互通节约上传流量成本，同时上传速度也快很多的。
   > 
   > 2、【读写权限】选择【公共读】，这样可以实现图片正常访问。

   ![OSS](https://libs.websoft9.com/Websoft9/blog/tmp/wordpress/zh/oss-bucket3-websoft9.png)
   > 通过【概述】查看OSS存储空间对外的访问URL，通过【传输管理】-【域名管理】可以通过CNAME域名解析，将一个更加友好的域名，如 images.websoft9.com ，指向默认的URL。

2. WordPress后台OSS配置

   进入 WordPress 后台，进入【插件】管理，下载阿里云 OSS Upload 插件并启用
   
   ![OSS](https://libs.websoft9.com/Websoft9/blog/tmp/wordpress/zh/wordpress-oss-plugin-websoft9.png)
   
   对 OSS Upload 插件进行配置，使之关联阿里云的OSS对象存储
   
   ![OSS](https://libs.websoft9.com/Websoft9/blog/tmp/wordpress/zh/wordpress-oss-websoft9.png)
   ![OSS](https://libs.websoft9.com/Websoft9/blog/tmp/wordpress/zh/oss-bucket3-websoft9.png)
   
   > **Access Key**和**Secret Key**登录阿里云后台获取：点击阿里云右上角用户头像，选择**accesskeys**，然后创建好AccessKey
   > 
   > 在阿里云的OSS管理界面的【概述】【访问域名】【外网访问】获取相关访问链接和地域节点。配置后点击【地域节点】下方的【测试一下】查看网络连通及读写操作，出现“写入正常, 读取正常, 删除正常”，表示配置成功。

  设置资源本地备份与同步。建议勾选，在网站的前期配置和文件同步过程中，可避免图片丢失无法恢复的问题。
  
  设置完成后点击【保存更改】按钮，然后可以再点击【上传整个本地存储目录】来同步文件到OSS，这个过程可能需要些时间，同步完成后，网站前台页面图以正常访问，表示配置成功。
  ![OSS](https://libs.websoft9.com/Websoft9/blog/tmp/wordpress/zh/wordpress-oss2-websoft9.png)
  

## WordPress 后台10大要点

为了使WordPress运行更有效率，方便维护、方便迁移，我们在实践中总结了WordPress管理员和内容管理者需要注意的10个要点：

1. 上传图片尽量不超过100k/张
2. 如果总图片数量超过500张，建议将图片放到对象存储中，实现动静分离，也便于维护
3. 所有图片名称为英文
4. 新闻的图片大小比例最好为600:400，保证统一性。每篇新闻都要配套图片，美观大方，便于展示
5. 所有页面、新闻 URL 地址均采用英文
6. 后台账号的密码要复杂一些
7. 轮播 Banner 不超过3张
8. 插件数量不超过20个，不用的插件务必卸载，以避免插件冲突而导致网站不可用
9. 网站内容为王，请将精力集中于内容的更新、知识库的建立
10. 视频等大文件请放到其他存储中

## 安装更多的 WordPress 网站

我们的 WordPress 部署包支持用户自主安装更多的 WordPress网站

* [Wordpress(LAMP) 安装一个新的网站](https://support.websoft9.com/docs/lamp/solution-deployment.html#deploy-second-application)
* [Wordpress(LEMP) 安装一个新的网站](https://support.websoft9.com/docs/lnmp/solution-deployment.html#deploy-second-application)

## 增加备案号

如果你使用的WordPress默认自带主题，需要在页面底部增加ICP备案以及链接。具体操作步骤如下：

1. 登录WordPress后台，依次打开【外观】>【小工具】
2. 从左侧的【可用小工具】中拖拽一个【文本】小工具到右侧的【页脚1】
3. 填写好备案号相关信息，增加链接，并分别点击【回车符】按钮和【保存】按钮
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-beian.png)
4. 刷新网页看效果

## 安全处理

### 代码植入处理

WordPress 由于被广泛使用，导致安全漏洞被无限放大，其中WordPress网站被植入第三方代码是最常见的安全故障。

* 源码中植入非常明显的代码
* 源码中植入难以察觉的代码
* 数据库中被植入

经过实践，下面介绍一种简单有效的处理办法

1. 通过在线安全检查网站[sitecheck.sucuri.net](https://sitecheck.sucuri.net)进行排查，初步定义被植入的内容
2. 登录WordPress后台，安装安全插件[Wordfence Scan Enabled](https://wordpress.org/plugins/wordfence/)
3. 运行Wordfence Scan Enabled，启动网站健康检查
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-wordfence-websoft9.png)
4. 对于“Critical”标记的结果，手工一一处理


