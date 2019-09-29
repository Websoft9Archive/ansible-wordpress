# 环境配置

## 指南

支撑 WordPress 运行的环境组件包括：PHP, MySQL, Apache or Nginx等，请根据不同的部署包分别查看对应的手册，完成更多配置。

| 部署包名称 | 说明| 参考项 |
| --- | --- | --- |
| Wordpress(LAMP) | Apache+MySQL+PHP on Linux | [《LAMP管理员手册》](https://support.websoft9.com/docs/lamp/zh) |
| Wordpress(LNMP)| Nginx+MySQL+PHP on Linux |[《LNMP管理员手册》](https://support.websoft9.com/docs/lnmp/zh)|
| Wordpress(IIS)| IIS+MySQL+PHP on Windows |[《IIS 管理员手册》](https://support.websoft9.com/docs/windows/zh)|
| Wordpress(WAMP)| Apache+MySQL+PHP on Windows |[《WAMPServer 管理员手册》](https://support.websoft9.com/docs/wampserver/zh/)|

## 环境是什么？

除了使用 WordPress 部署包的默认设置之外，你可能需要在服务器上完成更多任务：

- 修改PHP配置文件
- 增加更多网站
- 配置HTTPS证书等
- 修改网站路径
- 绑定域名
- ...

完成这些任务，你都需要参考[环境指南](/zh/admin-runtime.md#指南)  

另外，你可能会思考，WordPress 是如何在这些环境下运行的呢？ 请参考下图的层次结构图

![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/wamp/php-infra-websoft9.png)


