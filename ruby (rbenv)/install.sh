source $global_loc
export rbenv_path=$rbenv_path
git clone https://github.com/sstephenson/rbenv.git `$rbenv_path`

# while true; do
#     read -p "Do you wish to install some gems? " yn
#     case $yn in
#         [Yy]* ) gem install zeus compass mina capistrano chef
#         [Nn]* ) exit;;
#         * ) echo "Please answer yes or no.";;
#     esac
# done
