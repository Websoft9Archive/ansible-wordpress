# Troubleshooting

We collect the most common troubleshooting of using WordPress for your reference:

> Instance troubleshooting is closely related to the Instance provider that is Cloud Platform, please refer to [Cloud Platform Documentation](https://support.websoft9.com/docs/faq/tech-instance.html) 

#### Blow are the common toubleshooting for Wordpress

| **Troubleshooting** | **solution** |
| :--- | :--- |
| Database error | Check the MySQL services is OK<br />Check wp-config.php database configuration<br />Memory is not enough<br />CPU is 100% all time |
| 500 | Code error,found the error code in log file |
| Page confusion | Theme not compatible with Wordpress version |
| Very lowly or can't not be visit | No Disk Spaces, delete database log files |
| Can't upload file  | The Folder permissions problem of OS |
| Cant not send mail | The SMTP is wrong or no settings |

#### Database service could not be started?

Insufficient disk space, insufficient memory, and configuration file errors can make database service could not be started  

It is recommended to first check through the command.

```shell
# restart mysql service
systemctl restart mysql

# view disk space
df -lh

# view memory rate
free -lh
```
#### Database configure is correct, but still appear "Error establishing a database connection"

This maybe the database is damage, must repair it. To allow use of this page to automatically repair database problems, please add the following line to your _wp-config.php_ file. Once this line is added to your config, reload this page.

#### phpMyAdmin page access blank?

Please try another browser, such as chrome or firefox. If the phpMyAdmin can be opened normally before, and now appears to be incomplete or blank, it is recommended to clean up the browser cache, cookies and other information