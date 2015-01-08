curl https://raw.githubusercontent.com/creationix/nvm/v0.22.0/install.sh | bash
bash ./.zshrc
nvm install stable
nvm use stable
nvm alias default stable

while true; do
    read -p "Do you wish to install some global npms? " yn
    case $yn in
        [Yy]* ) npm install -g jshint node-inspector webkit-devtools-agent yo generator-webapp generator-threejs generator-node generator-gruntfile generator-angular forever; npm i -g nodemon pm2 autosave localtunnel grunt-cli gulp generator-angular-cordova; npm i -g cordova phonegap ionic easymock ios-sim strider ios-deploy;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
