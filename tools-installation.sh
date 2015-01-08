xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install imagemagick git ant coreutils moreutils
brew install grc fasd spark ack git
brew tap phinze/homebrew-cask
brew install brew-cask
brew install nginx mariadb redis elasticsearch memcached mongodb cassandra hbase hadoop couchdb