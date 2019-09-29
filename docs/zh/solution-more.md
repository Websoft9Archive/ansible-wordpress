# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 域名绑定

绑定域名的前置条件是：WordPress已经可以通过解析后的域名访问。  

虽然如此，从服务器安全和后续维护考量，**域名绑定**步骤不可省却  

WordPress 域名绑定操作步骤：

1. 登录云服务器
2. 修改 [Nginx虚拟机主机配置文件](/zh/stack-components.md#nginx)，将其中的 **server_name** 项的值 *metabase.example.com* 修改为你的域名
   ```text
   server {
      listen 80;
      server_name    metabase.example.com; # 改为自定义域名
   ...
   ```
3. 保存配置文件，重启[Nginx服务](/zh/admin-services.md#nginx)


## 更换域名

正确的WordPress域名更换方法为：

1. 域名控制台重新解析域名
2. WordPress后台-&gt;设置-&gt;常规，将网站路径和安装路径设置为新的域名

## 管理员密码


### 如何修改WordPress管理员密码？

以管理员账号登录后台-&gt;用户管理，找到账号后，点击打开详细信息，然后往下拉倒“账号管理”项，点击“生成密码”，然后修改密码，并更新个人资料 ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-modifypw-websoft9.png)

### 如何找回WordPress管理员密码？

#### 方案一：通过邮件找回密码

WordPress可以通过发送邮件找回密码，但前提条件是您的WordPress网站必须已经配置好了SMTP

#### 方案二：修改数据库中的密码字段
如果服务器没有支持发邮件密码的功能，数据库管理面板phpmyadmin进行修改
1. 找到相关的管理面板进入，并找到你的网站数据库，并找到wp_user这个表
2. 点击打开这个表找到你的管理员用户，并点击编辑，下面以admin用户进行操作截图
![](https://www.themepark.com.cn/wp-content/uploads/2016/08/9.png)
> 截图的地方就是密码的数据(MD5加密过)，隐藏需要将数据修改另外一个经过MD5加密的数据为：
21232f297a57a5a743894a0e4a801fc3（这个是admin对应的加密数据）
3. 点击“执行”，现在admin的账户的密码就改为admin了。

## 修改上传文件类型的限制

WordPress默认支持大部分图片等文件格式的上传，但也有一些文件格式是不支持的，根据个人需要，我们需要增加一些格式，当然也可以禁止一些格式的文件上传。设置方法如下：

把以下代码加到主题目录（```/data/wwwroot/wordpress/wp-content/themes/twentysixteen```）下的 functions.php 文件中：
	
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
    
>[warning] 以上是以自带主题 twentysixteen 威为例，如果您使用的不是这款主题，则需要到对应主题目录下的 functions.php 文件中添加。

## WordPress与Discuz集成

搭建网站时很有可能遇到这样的问题：使用WordPress搭建了页面，又使用Discuz搭建了一个论坛，两者的用户数据存在不同的数据库中，这样就无法统一整理了。

为了解决这一问题，可以使用Discuz提供的UCenter功能来将两者的用户数据进行统一整合。

具体参考：[http://bbs.websoft9.com/forum.php?mod=viewthread&tid=9](http://bbs.websoft9.com/forum.php?mod=viewthread&tid=9)

> Wordpress与Discuz集成是一件复杂的事情，以上方案我们在WordPress4.6版本上测试可用，WordPress4.9以上版本还没有测试过。

## WordPress 使用对象存储

当WordPress的图片超过500张的时候，这个时候就要准备进行人工的整理归类。建议将图片存放到对象存储中（一般称之为OSS）
WordPress使用OSS有两种方式，第一种是通过OSS客户端上传文件，然后在WordPress中调用；第二种是将OSS与WordPress集成，通过WordPress后台上传的文件就自动存放到OSS中。

### 手工上传文件到OSS

1. 通过OSS的客户端工具，上传图片到对象存储
2. 获取对象存储中图片的地址，地址一般类似如下：
   ```
   http://libs-websoft9-com.oss-cn-qingdao.aliyuncs.com/Websoft9/DocsPicture/zh/winscp/websoft9-winscp-youjian.png
   ```
3. Wordpress后台-页面编辑-插入多媒体，将图片插入到WordPress系统中
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/aliyun/aliyun-oss-adresstowp-websoft9.png)

### WordPress与OSS集成（自动）
将WordPress的wp-upload文件夹路径更改到OSS，这要每次通过WordPress上传的文件，就自动存放到了OSS中。具体操作步骤如下：

## WordPress后台使用10大要点

为了使WordPress运行更有效率，方便维护、方便迁移，我们在实践中总结了WordPress管理员和内容管理者需要注意的10个要点：

1. 图片大小不超过100k
2. 网站图片预计超过100张，建议将图片放到对象存储中，实现动静分离，也便于移植
3. 所有图片名称为英文
4. 新闻的图片大小比例最好为600:400，保证统一性。每篇新闻都要配套图片，美观大方，便于展示
5. 所有页面、新闻均采用英文网址
6. 后台账号的密码要复杂一些
7. 轮播Banner不超过3张
8. 插件数量不超过20个，不用的插件务必卸载，避免冲突导致网站不可用
9. 网站以内容为主，请将精力集中于内容的更新、知识库的建立
10. 视频等请放到存储中