## 主题更新

目前我们提供了Avada，Divi,Th7,Porto 四款主题，除 Porto 之外，其他的均来自 dianjin123.com 的汉化主题（QQ:935071815）。  

## 主题更新流程

通过Th7为例，主题更新流程如下：

1. 将下载的Th7包上传到路径： oss://libs-websoft9-com/apps/wordpress/，目的是为了备份每个历史版本
2. 解压该zip包，然后将主题和插件的压缩文件上传到路径： oss://libs-websoft9-com/apps/wordpress/the7/
3. 检查插件，如果插件中有[Meta文件](https://github.com/Websoft9/ansible-wordpress/blob/main/roles/wordpress/vars/main.yml)定义插件列表外的，需要追加该插件到对应列表
