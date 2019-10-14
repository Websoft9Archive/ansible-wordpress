# More

Each of the following solutions has been proven to be effective and we hope to be helpful to you.

## Domain binding

The precondition for **Domain binding** is have completed the **Domain resolution** for WordPress Instance.

From the perspective of server security and subsequent maintenance considerations, the **Domain Binding** step cannot be omitted.

WordPress domain name binding steps:

1. Connect your Cloud Server
2. Modify [vhost configuration file](/stack-components.md#apache), change the domain name item for you
   ```text
   #### WordPress(LAMP) bind domain #### 

     <VirtualHost *:80>
     ServerName www.mydomain.com # modify it for you
     DocumentRoot "/data/wwwroot/wordpress"
     ...
     
   #### WordPress(LNMP) bind domain #### 

     server {
      listen 80;
      server_name    wordpress.example.com; # modify it for you
     ...

   ```
3. Save it and restart [Nginx Service](/admin-services.md#nginx)


## Change Domain

The correct way to change the domain name is as follows

1. Go to Domain Console, complete Domain resolution
2. Connect Cloud Server, complete the Domain binding
   ![Wordpress modify URL](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-changeurl-websoft9.png)
4. Save it

> Some resource may remain the old domain URL after changing, you should modify them one by one

## Manage WordPress Password

We may **Modify** or **recover** WordPress administrator password

### Modify WordPress administrator password

Log in Wordpress, go to Users->Your Profile,update your password
![Wordpress Modify WordPress administrator password](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-modifypw-websoft9.png)

### Recover WordPress administrator password

If you don't remember the WordPress administrator password, you can retrieve it in the following two ways.

#### Recover by Email

WordPress can retrieve the password by sending an email, but only if your WordPress site has already configured SMTP.
![Wordpress Modify WordPress administrator password](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-forgetpw-websoft9.png)

#### Recover by database

If the server does not support the function of sending email passwords, the database management panel phpmyadmin will modify it.

1. Log in to phpMyAdmin, find the *wp_user* table of your WordPress database
   ![Wordpress database](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-wpusers-websoft9.png)
2. Edit the user(e.g. your username is `admin`)  
   ![Wordpress database](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-wpuserspw-websoft9.png)
3. Replace the data with `21232f297a57a5a743894a0e4a801fc3`(MD5)
4. Click **run**
3. The new password is `admin` now

## WordPress File type limit extend

WordPress supports uploading of most image formats such as images by default, but some file formats are not supported. According to personal needs, we need to add some formats. Of course, some formats can be prohibited from being uploaded. 

1. Edit `function.php` file on your Theme directory
2. Copy the code section to functions.php file
  ```
  function edit_upload_types($existing_mimes = array()) {

  // Allowed file types to upload
  $existing_mimes['woff'] = 'application/woff';
  $existing_mimes['rar'] = 'application/rar';

  // To add more file type support, add code later.

  // File types that are not allowed to be uploaded
  unset( $existing_mimes['jpg'] );

  return $existing_mimes;
  }
  add_filter('upload_mimes', 'edit_upload_types');
  ```

## WordPress Using object storage

When WordPress has more than 500 images, it is recommended to store the images in the object storage (generally called OSS).

There are two ways for WordPress to use OSS. The first is to upload files through the OSS client and then call them in WordPress. The second is to integrate OSS with WordPress, and the files uploaded through the WordPress background are automatically stored in OSS.

### Manually upload files to OSS (recommended)

1. Upload your images to OSS by the OSS management tool
2. Configue domain for your images folder
3. Get your image URL from OSS like below
   ```
   https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-product-screenshot.png
   ```
4. Go to Wordpress backend -> Edit pag ->， insert the image URL 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-insertfromurl-websoft9.png)

### WordPress integration with OSS

1. Mount OSS to WordPress's wp-upload folder
2. Every time a file uploaded via WordPress is automatically stored in OSS

> The operation of mounting OSS is complicated and requires user independent research.

## WordPress 10 major points

In order to make WordPress run more efficiently, easy to maintain, and easy to migrate, we have summarized 10 key points that WordPress administrators and content managers need to pay attention to in practice:

1. Upload pictures as far as possible no more than 100k/sheet
2. If the total number of pictures exceeds 500, it is recommended to put the picture in the object storage to achieve dynamic separation and easy maintenance.
3. All picture names are in English
4. The image size ratio of the news is preferably 600:400 to ensure uniformity. Each news must be accompanied by pictures, beautiful and easy to display.
5. All pages and news URL addresses are in English
6. The password of the background account is more complicated.
7. Carousel Banner no more than 3
8. The number of plugins does not exceed 20, and the plugins that are not used must be uninstalled to avoid the conflict of plugins and the website is unavailable.
9. The content of the website is king. Please concentrate on the update of the content and the establishment of the knowledge base.
10. Please put large files such as video in other storage.

## Add new WordPress site

Websoft9 Wordpress stack supports the deployment of multiple applications (websites), but different environments have different operating methods.

* [Add new site on Wordpress on LAMP](https://support.websoft9.com/docs/lamp/solution-deployment.html#deploy-second-application)
* [Add new site on Wordpress on LEMP](https://support.websoft9.com/docs/lnmp/solution-deployment.html#deploy-second-application)