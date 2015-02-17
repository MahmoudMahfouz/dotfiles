source $global_loc
curl https://raw.githubusercontent.com/creationix/nvm/v0.22.0/install.sh | NVM_DIR=$nvm_path bash
source .zshrc
nvm install stable
nvm install 0.10.35
nvm use 0.10.35
nvm alias default 0.10.35

while true; do
    read -p "Do you wish to install some global npms? " yn
    case $yn in
        [Yy]* ) npm install -g jshint node-inspector webkit-devtools-agent yo generator-webapp generator-threejs generator-node generator-gruntfile generator-angular forever; npm i -g nodemon pm2 autosave localtunnel grunt-cli gulp bower generator-angular-cordova; npm i -g cordova phonegap ionic easymock ios-sim strider ios-deploy;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
