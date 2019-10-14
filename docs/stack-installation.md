# Initial Installation

If you have completed the WordPress deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for WordPress

## WordPress Installation Wizard

1. Using local Chrome or Firefox to visit the URL *http://domain name* or *http://Internet IP*, you will enter the WordPress   
   ![Wordpress installation language](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-installsetlanguage-websoft9.png)
2. Select your language, then go to next step
3. Set administrator user, password and mail, then click **Install WordPress**
   ![Wordpress installation administrator](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-installsetadmin-websoft9.png)
4. OK, it has been installed successfully.
   ![Wordpress installation ok](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-installss-websoft9.png)
5.Use *http://domain or Internet IP/wp-admin*  to login to WordPress's dashboard
   ![Wordpress installation dashbaord](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-bkdashboard-websoft9.png)

> More useful WordPress guide, please refer to [WordPress Documentation](https://wordpress.org/support/)

## Q&A

#### I can't visit the start page of WordPress?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Which database does this WordPress use?

MySQL

#### Why can I not see the database configuration step?

If you are familiar with Wordpress, you should know that you can see the database configuration interface In the installation wizard process of Wordprees like below

![Wordpress install password](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wp04.png)

Why can't I see this interface? Websoft9 Wordpress Image have pre-configure the database in your wp-config.php like below
```sql
Database Name: wordpress
Username: wordpress
Password: a very strong password,you can get it in the file /credentials/password.txt or /root/password.txt
Database: Host localhost
```
