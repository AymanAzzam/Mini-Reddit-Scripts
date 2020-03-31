#install Apache
cd
sudo apt-get update && sudo apt-get install apache2 -y
sudo apt-add-repository ppa:ondrej/apache2 -y

#install the composer
sudo apt-get install composer -y

#install MySQL
sudo apt-get install mysql-server
sudo apt-get install mysql-client

#install php
sudo apt install php7.2 
sudo apt-get install libapache2-mod-php php-mbstring php-bcmath php-xml -y
echo | sudo apt-add-repository ppa:ondrej/php
sudo apt-get install php7.2-pdo php7.2-mysql php7.2-gd -y
#sudo apt-get install php-{xml,mbstring,bcmath,bz2,intl,gd,mbstring,mysql,zip,fpm} -y

#install xampp
cd
wget https://www.apachefriends.org/xampp-files/5.6.20/xampp-linux-x64-5.6.20-0-installer.run
sudo chmod +x xampp-linux-x64-5.6.20-0-installer.run
echo y | sudo ./xampp-linux-x64-5.6.20-0-installer.run

#install jenkins
cd
sudo apt-get update
sudo apt-get install openjdk-8-jdk
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get install jenkins

