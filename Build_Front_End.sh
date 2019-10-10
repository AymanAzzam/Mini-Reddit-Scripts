########## Front End Build ###########

#install the packages
sudo npm install jquery --save && sudo npm install --save @types/jquery && sudo npm install rxjs
#sudo npm install --production

#Build the project
#sudo sed -i 's/localhost:3000/35.204.169.121/g' src/app/http.service.ts
#sudo sed -i 's/930d0c7c.ngrok.io/35.204.169.121/g' src/app/http.service.ts
sudo ng build --base-href=http://35.204.169.121/Reddit/

#Run unit testing
#sudo ng test

#integrate it with Back End project
if [ -d "/var/lib/jenkins/workspace/Mini-Reddit-BackEnd/Mini-Reddit Project/public/Reddit" ]; then
	sudo rm -rv '/var/lib/jenkins/workspace/Mini-Reddit-BackEnd/Mini-Reddit Project/public/Reddit'
fi
sudo cp -r dist/Reddit '../Mini-Reddit-BackEnd/Mini-Reddit Project/public'

