source $global_loc
export rvm_path=$rvm_path

# curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby --rails
# source ~/.rvm/scripts/rvm
\curl -L https://get.rvm.io | sudo bash -s stable
source /etc/profile.d/rvm.sh
rvm requirements
while true; do
    read -p "Do you wish to install some gems? " yn
    case $yn in
        [Yy]* ) gem install zeus compass mina capistrano chef
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
