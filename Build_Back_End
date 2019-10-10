########## Back End Build ###########

#Prepare .env file
sudo mv 'Mini-Reddit Project/.env.example' 'Mini-Reddit Project/.env'
sudo sed -i 's/DB_HOST=127.0.0.1/DB_HOST=35.204.246.196/g' 'Mini-Reddit Project/.env'
sudo sed -i 's/DB_DATABASE=YourDB/DB_DATABASE=mini_reddit_database/g' 'Mini-Reddit Project/.env'
#sudo sed -i 's/DB_DATABASE=YourDB/DB_DATABASE=mini_reddit_test/g' 'Mini-Reddit Project/.env'
sudo sed -i 's/DB_USERNAME=YourDBUsername/DB_USERNAME=root/g' 'Mini-Reddit Project/.env'
sudo sed -i 's/DB_PASSWORD=YourDBPassword/DB_PASSWORD=1357902468/g' 'Mini-Reddit Project/.env'

#Install composer and generate key
sudo chown -R ayman_mohammed98 /home/ayman_mohammed98/.composer/cache/repo/https---packagist.org 
sudo chown -R ayman_mohammed98 /home/ayman_mohammed98/.composer/cache/files/ 
sudo chown -R ayman_mohammed98 /home/ayman_mohammed98/.composer 
cd 'Mini-Reddit Project' 
sudo composer install 
sudo php artisan key:generate 
sudo php artisan jwt:secret -f
sudo php artisan storage:link #maybe need to change

#Edit files in BackEnd
sudo cp /home/ayman_mohammed98/scripts/Authenticate.php '/var/lib/jenkins/workspace/Mini-Reddit-BackEnd0/Mini-Reddit Project/vendor/laravel/framework/src/Illuminate/Auth/Middleware/Authenticate.php'
sudo cp /home/ayman_mohammed98/scripts/StreamBuffer.php '/var/lib/jenkins/workspace/Mini-Reddit-BackEnd0/Mini-Reddit Project/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport'

#Rebuild Database
sudo php artisan migrate:fresh
sudo php artisan db:seed

#Unit Test 
sudo ./vendor/bin/phpunit

#Back to our DataBase
#sudo sed -i 's/DB_DATABASE=YourDB/DB_DATABASE=mini_reddit_database/g' '.env'

#Copy new Version
cd ../..
if [ -d "/var/lib/jenkins/workspace/Mini-Reddit-BackEnd" ];then
	sudo cp -r 'Mini-Reddit-BackEnd/Mini-Reddit Project/public/Reddit' "Mini-Reddit-BackEnd0/Mini-Reddit Project/public/"
	sudo rm -rv Mini-Reddit-BackEnd
fi
sudo cp -r Mini-Reddit-BackEnd0 Mini-Reddit-BackEnd 

