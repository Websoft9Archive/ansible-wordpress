# SMTP

Sending mail is a common feature for WordPress. After a large number of user practice feedback, only one way is recommended, that is, using the **third-party STMP service** to send the email.

> Do not try to install **Sendmail** or other Mail server software on your Cloud Server for sending mail, because it is very difficulty in maintenance.

Follow is the sample using **SendGrid's SMTP Service** to configure sending mail for WordPress:

1. Log in SendGrid console, prepare your SMTP settings like the follow sample
   ```
   SMTP host: smtp.sendgrid.net
   SMTP port: 25 or 587 for unencrypted/TLS email, 465 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: websoft9smpt
   SMTP password: #fdfwwBJ8f    
   ```
2. Log in WordPress Console
3. Go to Setting->General Settings, set your email which will diplay in the email sended for users
   ![WordPress SMTP](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-setdmail-websoft9.png)
4. Install the plugin: [WP Mail SMTP by WPForms](https://wordpress.org/plugins/wp-mail-smtp/)
5. Start to configure the WP Mail SMTTP(This sample is SendGrid)
   ![WordPress SMTP](https://libs.websoft9.com/Websoft9/DocsPicture/en/wordpress/wordpress-smtpsetdetail-websoft9.png)
6. Click the **Send Email**, you can get the feedback *"Your email was sent successfully!..."* if SMTP is useful
   ![WordPress SMTP](https://libs.websoft9.com/Websoft9/DocsPicture/zh/wordpress/wordpress-mailss-websoft9.png)

More SMTP Service(Gmail, Hotmail, QQ mail, Yahoo mail, SendGrid and so on)  settings or Issues with SMTP, please refer to Websoft9's *[SMTP Guide](https://support.websoft9.com/docs/faq/tech-smtp.html)*