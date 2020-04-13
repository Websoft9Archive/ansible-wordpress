# 故障处理

我们收集使用WordPress过程中最常见的故障，供您参考：

## WordPress相关

WordPress使用过程中可能出现的问题以及对策：

### WordPress运行中，频繁出现数据库连接错误？
诊断原因：可能性最大的原因是内存不足导致数据库运行异常
解决方案：增加内存+启用CDN

> CDN可以在给网站加速的同时，大大降低服务器内存的开销

### WordPress上传图片出错？

WordPress上传文件出错，有几种可能性：  
1. 图片大小超过服务器限定的要求  
解决方案：请参考本章环境管理-&gt;PHP配置中的修改上传文件大小  
2. 图片实际的格式与后缀不一致。  
解决方案：例如一个 WordPress9.jpg的图片的真实格式是Wordpress9.jpeg，上传的时候会报错，如果把后缀改为jpeg，上传正常。实际上，真实格式与后缀不一致的时候，在Windows系统的文件中也不会有预览效果
3. 权限问题（IIS中比较常见）

### WordPress出现解决正在执行例行维护请一分钟后回来

出现这个提示的原因是在网站Wordpress安装目录下生成了.maintenance文件

* 如果存在将其删除即可,恢复正常. 
* 如果不存在,那么新建一个.maintenance，内容为空白，刷新，恢复正常后再删除它

### WordPress不能发送邮件的原因

WordPress默认是通过mail\(\)函数发送邮件，必须要求服务器本身配置好了邮件功能。实际中，将服务器改造成邮件服务器，是一件非常复杂的工作，且难以维护。因此，建议安装一个SMTP插件来解决发送邮件问题：WP-Mail-SMTP

### WordPress 5.0 换回老版”Classic Editor”经典编辑器
Wordpress5.0之后的版本，编辑器与之前有了明显的区别。这里不探讨编辑器孰优孰劣，我们发现编辑器升级之后，用户的主题无法适应新的编辑器，导致做不到可视化编辑。如果您希望主题可以可视化编辑，您必须启用经典编辑器。启用的方法非常简单，安装“Classic Editor”这个插件即可

### WordPress 后台升级网络不通，官网也打不开？
WordPress是国外的网站，后台升级地址也是国外的，如果网站打不开，后台升级同样就无法进行。如果您迫切需要升级，请参考我们的[WordPress手工升级文档](/zh/solution-upgrade.md#手动升级)

### Wordpress导入一个演示数据显示 You don't have permission to access /wp-admin/admin.php on this server?
待研究

## 数据库相关

#### 数据库服务无法启动

数据库服务无法启动最常见的问题包括：磁盘空间不足，内存不足，配置文件错误。  
建议先通过命令进行排查  

```shell
# 查看磁盘空间
df -lh

# 查看内存使用
free -lh
```
## 服务器相关

服务器相关故障的诊断和解决，与云平台密切相关，请参考[云平台文档](https://support.websoft9.com/docs/faq/zh/tech-instance.html)
