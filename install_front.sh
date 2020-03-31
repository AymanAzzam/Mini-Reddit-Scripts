#install git
sudo apt-get update
sudo apt-get install git-core
git config --global user.name ayman
git config --global user.email ayman.mohammed98@eng-st.cu.edu.eg

#install npm
sudo apt-get install npm -y
sudo npm install npm-install-all -g

#install nodejs
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g @angular/cli

#install ng
sudo apt-get install ng-common -y
sudo npm install -g @angular/cli && sudo ng add @angular/material
sudo npm install ngx-bootstrap --save
sudo npm install jquery --save && sudo npm install --save @types/jquery

#install Apache
cd
sudo apt-get update && sudo apt-get install apache2 -y

#install xampp
wget https://www.apachefriends.org/xampp-files/5.6.20/xampp-linux-x64-5.6.20-0-installer.run
sudo chmod +x xampp-linux-x64-5.6.20-0-installer.run
echo y | sudo ./xampp-linux-x64-5.6.20-0-installer.run

