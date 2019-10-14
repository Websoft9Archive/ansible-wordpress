# Update & Upgrade

Updates and upgrades are one of the maintenance tasks for sytem. Programs that are not upgraded for a long time, like buildings that are not maintained for a long time, will accelerate aging and gradually lose functionality until they are unavailable.

You should know the differences between the terms **Update** and **Upgrade**([Extended reading](https://support.websoft9.com/docs/faq/tech-upgrade.html#update-vs-upgrade))
- Operating system patching is **Update**, Ubuntu16.04 to Ubuntu18.04 is **Upgrade**
- MySQL5.6.25 to MySQL5.6.30 is **Update**, MySQL5.6 to MySQL5.7 is **Upgrade**

For WordPress maintenance, focus on the following two Update & Upgrade jobs

- Sytem update(Operating System and Running Environment) 
- WordPress upgrade 

## System Update

Run an update command to complete the system update:

``` shell
#For Centos&Redhat
yum update -y

#For Ubuntu&Debian
apt update && apt upgrade -y
```
> This deployment package is preconfigured with a scheduled task for automatic updates. If you want to remove the automatic update, please delete the corresponding Cron

## WordPress Upgrade

### Overview

WordPress Upgrade includes: WordPress core upgrade, Plugin upgrade, Theme upgrade. You can upgrade them by the dashboard of WordPress. Following is the reminder links for WordPress Upgrade

![](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-upgrade-websoft9.png)

WordPress core, Plugin, Theme are developed by different organization, so their may have the incompatible problem after any upgrade like below

- The website cannot be opened, showing 500 program errors
- Website structure has become confusing
- The topic part feature is not available

The above incompatibility is normal, and the best solution is to adapt the theme and plugin version to the WordPress kernel version.

### Worpress Core upgrade

#### One-click upgrade

When new version for Wordpress Core,you can see the upgrade reminder link, click it to start updates

![](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-wordpresscoreupdate-websoft9.png)

#### Manual upgrade

Sometimes, you can't upgrade WordPress by On-Click for the reason of networ, manual upgrade for you

1. [Download](https://wordpress.org/download/) a new WordPress version and unzip it
2. Log in to Cloud Server and go to the [WordPress root directory](/stack-components.html#wordpress),
3. Delete the `wp-admin` and `wp-includes` 
4. Upload local WordPress to Cloud Server, cover all files if have the same file name 

### Plugins upgrade

Please update plugin online if you need,e.x
   ![Wordpress plugin upgrade](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-pluginsupgrade-websoft9.png)

### Theme upgrade

Most of the time,you may using the business theme which don't provider online update,below is the suggest steps  

1. Using SFTP to delete the theme from wp-contents folder
2. Log in WordPress, go to Appearance->Theme->Add New, upload the theme online
  ![Wordpress theme upgrade](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-themesupgrade-websoft9.png)
3. Enable the theme when complete the installation