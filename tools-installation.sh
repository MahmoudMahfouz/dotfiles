xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install imagemagick git ant coreutils moreutils tmux vim cmake
# IF INSTALLING vim using brew (latest version)
# sudo mv /usr/bin/vim /usr/bin/oldvim
# ln -s /usr/local/bin/vim /usr/bin/vim
# also if using brew on multiple users
# sudo chgrp -R brew {/usr/local,/Library/Caches/Homebrew} && sudo chmod -R g+w {/usr/local,/Library/Caches/Homebrew} && brew doctor
brew install grc fasd spark ack
brew tap phinze/homebrew-cask
brew install brew-cask
brew install Caskroom/cask/java Caskroom/cask/xquartz
brew install nginx mariadb redis elasticsearch memcached mongodb cassandra hbase couchdb hadoop
# ctags used for vi editors
brew install ctags-exuberant 

### python packages for using cassandra CQL on the shell
pip install cassandra-driver
pip install cql
