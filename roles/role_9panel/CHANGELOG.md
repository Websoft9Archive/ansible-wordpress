# CHANGELOG



## To do

1. tasks/maim.yml 中增加：当操作系统为Ubuntu时，选择 apache 的时候，权限应该修改为：www-data
2. tasks/maim.yml 中对 www.example.com 处理的时候，增加 when w9panel_set_apps==Example

## Logs

### Bug Fixes

* 2020-02-22  取消在9panel中创建 /data/apps
* 2020-02-22  取消 shell: "curl -Is http://127.0.0.1 | grep 'Server' |awk -F ': ' '{print $2}'|tr 'A-Z' 'a-z'" register: http_type
* 2020-02-19  9panel采用压缩包下载，即增加version

### Features

* 2020-02-20  增加中国地区下载地址