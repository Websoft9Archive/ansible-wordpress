## 镜像说明

WordPress 包括三个版本：
1. 官方原版
2. avada主题版
3. portal主题版

主题变量名为 theme ，取值范围：[twentynineteen,avada,porto],其中 twentynineteen 对应
官方原版。部署前需要检查的文件：hosts 里的IP，/roles/vars/main.yml 变量是否正确。

## WordPress的下载地址
group_vars/all 文件里

## 运行参数
运行ansible安装程序，变量和标签需要设置
tag:wordpress
tag:wordpress-discuz
必须设置其中一个

变量
theme:[twentynineteen,avada,porto],不设置默认为第一个
web:[apache,nginx]





