########## Front End Build ###########

#install the packages
sudo npm install jquery --save && sudo npm install --save @types/jquery && sudo npm install rxjs

#Build the project
sudo ng build --base-href=http://35.204.169.121

#Run unit testing
#sudo ng test

#Remove the Deployed Version
if [ -d "/var/lib/jenkins/workspace/Front-End-New_Deployed" ]; then
	sudo rm -rv ../Front-End-New_Deployed
fi

#Deply the project
sudo ng serve --host=0.0.0.0 --port=4300 &

#
sudo mv ../Front-End-New ../Front-End-New_Deployed
