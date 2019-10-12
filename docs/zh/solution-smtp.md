# SMTP

大量用户实践反馈，使用**第三方 SMTP 服务发送邮件**是一种最稳定可靠的方式。  

请勿在服务器上安装sendmail等邮件系统，因为邮件系统的路由配置受制与域名、防火墙、路由等多种因素制约，非常不稳定，且不易维护、诊断故障很困难。

下面以**网易邮箱**为例，提供设置 WordPress 发邮件的步骤：

1. 在QQ邮箱管理控制台[获取 SMTP 相关参数](https://service.mail.qq.com/cgi-bin/help?subtype=1&&no=166&&id=28)
   ```
   SMTP host: smtp.qq.com
   SMTP port: 465 or 587 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: 21323232@qq.com
   SMTP password: #wwBJ8    //此密码不是邮箱密码，是需要通过QQ邮箱后台设置去获取的[授权码](https://service.mail.qq.com/cgi-bin/help?subtype=1&&id=28&&no=1001256)
   ```
2. 登录 WordPress后台-设置-常规，设置好需要用于发件的邮件地址 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-mailcg-websoft9.png)
3. 安装SMTP插件：[WP Mail SMTP by WPForms](https://wordpress.org/plugins/wp-mail-smtp/)
3. 后台-设置-Email，配置WP Mail SMTTP 插件的参数
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-mailconf-websoft9.png)
4. 填写参数后保存，然后最后输入一个收件地址用于测试是否可用
   - 如果测试成功，会看到”Your email was sent successfully!”
   - 如果邮件配置不可用，则会显示“There was a problem while sending the test email.”
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-mailss-websoft9.png)
5. SMTP配置成功后，所有的WordPress后台邮件发送就会使用这个配置

更多邮箱设置（网易邮箱、QQ邮箱，阿里云邮箱，Gmail，Hotmail等）以及无法发送邮件等故障之诊断，请参考由Websoft9提供的 [SMTP 专题指南](https://support.websoft9.com/docs/faq/zh/tech-smtp.html)