# SSL/HTTPS

网站完成[域名绑定](/zh/solution-more.html#域名绑定)且可以通过HTTP访问之后，方可设置HTTPS。

WordPress预装包，已安装Web服务器 SSL 模块和公共免费证书方案 [Let's Encrypt](https://letsencrypt.org/) ，并完成预配置。

> 除了虚拟主机配置文件之外，HTTPS设置无需修改 Web 服务器的任何其他文件

## 配置参考

不同的环境，配置方式不一样，请选择对应的方案：

* [WordPress（LAMP） HTTPS 配置方案](https://support.websoft9.com/docs/lamp/solution-https.html)
* [WordPress（LNMP） HTTPS 配置方案](https://support.websoft9.com/docs/lnmp/solution-https.html)
* [WordPress（WAMP） HTTPS 配置方案 ](https://support.websoft9.com/docs/wampserver/solution-https.html)
* [WordPress（IIS） HTTPS 配置方案 ](https://support.websoft9.com/docs/windows/solution-https.html)

## 疑难问题

#### 配置HTTPS后，网站部分资源无法加载？

在完成 https 的配置后，可能会出现网站无法加载 css 等静态文件，特别是是对于经过二次开发过的 WordPress 会更为常见。

问题原因及对策

1. 特殊插件导致？ 某些插件自带 HTTPS 开关，需要根据实际情况开启或关闭。 
2. 开了 CDN 服务？ 编辑 WordPress 根目录下的 **wp-config.php** 文件，增加如下代码

    ```
       define('FORCE_SSL_ADMIN', true);
       define('FORCE_SSL_LOGIN', true);
       $_SERVER['HTTPS'] = 'ON';
       define( 'CONCATENATE_SCRIPTS', false );
    ```

#### “....并非完全安全”？
![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/avada/https-notallsafe-websoft9.png)

原因是由于 WordPress 网页中含有一部分 HTTP 开头的图片等静态链接资源，需要手工逐一修改