########## Back End Deploy ###########

#Remove the old version
if [ -d "/var/www/html/Mini-Reddit-BackEnd" ]; then
sudo rm -rf /var/www/html/Mini-Reddit-BackEnd 
fi

#Move the new version into Directory
sudo cp -r ../Mini-Reddit-BackEnd /var/www/html

#Restart apache
sudo service apache2 restart

