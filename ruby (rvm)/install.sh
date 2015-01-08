curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby --rails
. ~/.zshrc
while true; do
    read -p "Do you wish to install some gems? " yn
    case $yn in
        [Yy]* ) gem install zeus compass mina capistrano chef
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
