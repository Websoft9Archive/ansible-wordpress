# SSL/HTTPS

网站完成域名绑定且可以通过HTTP访问之后，方可设置HTTPS。

WordPress预装包，已安装Web服务器 SSL 模块和公共免费证书方案 [Let's Encrypt](https://letsencrypt.org/) ，并完成预配置。

> 除了虚拟主机配置文件之外，HTTPS设置无需修改 Web 服务器的任何其他文件

## 配置对照

具体配置非常严谨，请根据不同版本的WordPress而采用对应的配置方案：

1. [LAMP版本的WordPress配置方案](https://help.websoft9.com/lamp-guide/solution/sethttps.html)
2. [LNMP版本的Wordpress配置方案](https://help.websoft9.com/lnmp-guide/solution/sethttps.html)
3. [WAMPServer版本的Wordpress配置方案](https://help.websoft9.com/phpstacks-practice-windows/wampserver/sethttps.html)
4. [IIS版本的Wordpress配置方案](https://help.websoft9.com/windows-iis/solution/sethttps.html)

## 专题指南

若参考上面的**简易步骤**仍无法成功设置HTTPS访问，请阅读由Websoft9提供的 [《HTTPS 专题指南》](https://support.websoft9.com/docs/faq/zh/tech-https.html#nginx)

HTTPS专题指南方案包括：HTTPS前置条件、HTTPS 配置段模板、注意事项、详细步骤以及故障诊断等具体方案。

## 疑难问题

在完成 https 的配置后，网站可能会出现无法加载 css 等静态文件无法加载的问题（这个问题一般是对于已经经过二次开发过的 WordPress 网站才会有，刚安装完成的 WordPress 只需按照上文开启 HTTPS 即可）。导致这个问题出现有以下几个原因：
1. 使用了某些插件
    这种情况只需到 WordPress 后台找到对应的插件，进入到插件设置页面将链接改为带 https 的即可。 
2. 开了 CDN 服务
    开启 CDN 的 HTTPS 服务后，由于 WPordress 本身的原因导致 css 等静态文件不能正确跳转到 HTTPS 。这种情况下可在 **wp-config.php**（文件路径：```/data/wwwroot/default/wordpress``` 或 ```/data/wwwroot/wordpress```）的最上面的 ```<?php^M``` 的下一行添加以下代码：
    
       define('FORCE_SSL_ADMIN', true);
       define('FORCE_SSL_LOGIN', true);
       $_SERVER['HTTPS'] = 'ON';
       define( 'CONCATENATE_SCRIPTS', false );