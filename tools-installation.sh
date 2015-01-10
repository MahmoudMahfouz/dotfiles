xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install imagemagick git ant coreutils moreutils tmux
brew install grc fasd spark ack git
brew tap phinze/homebrew-cask
brew install brew-cask
brew install Caskroom/cask/java
brew install nginx mariadb redis elasticsearch memcached mongodb cassandra hbase couchdb hadoop
### python packages for using cassandra CQL on the shell
pip install cassandra-driver
pip install cql
