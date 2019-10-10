#Not work Because of the GCP machine Can't open any Browser.

#Change the Link to the server
for filename in *.js; do
	sudo sed -i 's#localhost:4200#35.204.169.121/Reddit#g' "$filename"
done

#report package
sudo npm i jasmine-spec-reporter
sudo npm i protractor-html-reporter-2
sudo npm i jasmine-reporters
sudo npm i fs-extra
sudo npm i protractor-jasmine2-screenshot-reporter

#Update the Web Driver
sudo webdriver-manager update

#Run Tests
protractor config.js
