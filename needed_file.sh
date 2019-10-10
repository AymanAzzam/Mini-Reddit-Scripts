#copy the project to tha apache server
cd
sudo chgrp -R www-data '/var/www/html/Mini-Reddit-BackEnd/Mini-Reddit Project' 
sudo chmod -R 775 '/var/www/html/Mini-Reddit-BackEnd/Mini-Reddit Project/storage' 
cd /etc/apache2/sites-available 
echo "Listen 4200
<VirtualHost *:80>
ServerName http://35.204.169.121

ServerAdmin ayman_mohammed98@eng-st.cu.edu.eg
DocumentRoot '/var/www/html/Mini-Reddit-BackEnd/Mini-Reddit Project/public'

<Directory '/var/www/html/Mini-Reddit-BackEnd/Mini-Reddit Project'>
AllowOverride All
</Directory>

ErrorLog ${APACHE_LOG_DIR}/error.log
CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

<VirtualHost *:4200>
ServerName http://35.204.169.121

ServerAdmin ayman_mohammed98@eng-st.cu.edu.eg
DocumentRoot '/var/www/html/Front-End/src/app'

<Directory '/var/www/html/Front-End/'>
AllowOverride All
</Directory>

<Directory '/var/www/html/Front-End/src/app'>
      Allow from all
      Options -MultiViews
      # Uncomment this if you're on Apache >= 2.4:
      Require all granted
</Directory>
ErrorLog ${APACHE_LOG_DIR}/error.log
CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
" | sudo tee /etc/apache2/sites-available/laravel.conf 
sudo a2dissite 000-default.conf 
sudo a2ensite laravel.conf 
sudo a2enmod rewrite 
